#!/bin/bash
# This script calculates compound interest.
echo "Enter the principal:"
read p
echo "Enter the annual interest rate (as a percentage):"
read r
echo "Enter the number of times interest is compounded per year:"
read n
echo "Enter the time in years:"
read t
# Formula for compound interest
amount=$(echo "scale=2; $p * (1 + $r / $n) ^ ($n * $t)" | bc)
echo "The amount after $t years is: $amount"
