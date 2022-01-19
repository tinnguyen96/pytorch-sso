#!/bin/bash

#SBATCH --gres=gpu:volta:1
#SBATCH -c 5
#SBATCH -o ../logs/main.sh-%j

module load anaconda/2021b

cd ../

python -u main.py --root "../../../imageData/" --config configs/cifar10/lenet_vogn.json --download