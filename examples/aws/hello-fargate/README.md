# Dockerized App Using ECS, ECR, and Fargate (Dart)

This example builds and publishes a Docker image to ECR, deploys it to AWS Fargate behind an Application Load Balancer, and exports the service URL.

## Prerequisites

- [Pulumi CLI](https://www.pulumi.com/docs/install/)
- AWS credentials configured for Pulumi
- Dart SDK
- Docker

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi up
```

The stack exports `url`.

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```
