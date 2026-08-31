#!/bin/bash

# Single prompt for all inputs
read -p "Enter Principal, Rate, and Time (separated by spaces): " principal rate time

# Calculate simple interest using bc to handle decimals
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $si" | bc)

# Display results
echo "-----------------------------------"
echo "Simple Interest: $si"
echo "Total Amount:    $total"
echo "-----------------------------------"
