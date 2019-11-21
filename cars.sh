#! /bin/bash
# cars.sh
# Venezia Quezada

while [ "$command" != '3' ]
do
        echo "type the number 1 to enter a new car"
        echo "type the number 2 to display the list of cars"
        echo "type the number 3 to quit and exit the program"
        echo "number: "
        read -r command

        case "$command" in
                1) echo "Enter the year: "; read year
                echo "Enter the make: "; read make
                echo "Enter the model: "; read model
                echo "$year:$make:$model" >> My_old_cars
                ;;
                2) sort My_old_cars ;;
                3) exit ;;
        esac
done
