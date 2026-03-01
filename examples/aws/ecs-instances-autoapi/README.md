[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/ecs-instances-autoapi/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/ecs-instances-autoapi/README.md#gh-dark-mode-only)

# AWS ECS with Container Instances (Dart)

This Dart example deploys ECS on EC2 container instances (not Fargate). It provisions:

- IAM roles and instance profile for ECS tasks and ECS container instances
- ECS-optimized launch configuration and autoscaling group
- ECS cluster, task definition, and ECS service
- Application Load Balancer and target group routing traffic to `nginx`

## Prerequisites

- [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
- [Install Dart](https://dart.dev/get-dart)
- Configure [AWS credentials](https://www.pulumi.com/docs/iac/clouds/aws/get-started/)

## Configuration

Required:

- `cfg:autoscalingGroupSize` (number)

Example:

```sh
pulumi config set aws:region us-east-1
pulumi config set cfg:autoscalingGroupSize 1
```

## Deploy

```sh
pulumi up
```

After deployment, use stack outputs to get the service endpoint:

```sh
pulumi stack output appUrl
```

## Cleanup

```sh
pulumi destroy
pulumi stack rm
```
