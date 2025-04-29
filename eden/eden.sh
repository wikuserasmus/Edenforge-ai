#!/bin/bash

while true; do
    clear
    echo "=== EDEN CONTROL PANEL ==="
    echo "1) Prepare PSS Sales Plan"
    echo "2) Send Kibali Proposal"
    echo "3) Sync GitHub Scrolls"
    echo "4) Start Voice Companion"
    echo "5) Exit Eden"
    echo
    read -p "Choose your command: " option
    case $option in
        1)
            echo "Drafting Sales Plan..."
            bash ~/eden/scripts/sales_plan.sh
            read -p "Press Enter to continue." ;;
        2)
            echo "Composing Proposal to Kibali..."
            bash ~/eden/scripts/kibali_mail.sh
            read -p "Press Enter to continue." ;;
        3)
            echo "Syncing Scrolls to GitHub..."
            cd ~/eden && git add . && git commit -m "Update" && git push
            read -p "Press Enter to continue." ;;
        4)
            echo "Launching Voice Companion (placeholder)..."
            # Future: Implement PocketSphinx or Vosk here
            read -p "Press Enter to continue." ;;
        5)
            echo "Stand down. Eden will rest."
            exit 0 ;;
        *)
            echo "Invalid input. Try again."
            read -p "Press Enter to continue." ;;
    esac
done
