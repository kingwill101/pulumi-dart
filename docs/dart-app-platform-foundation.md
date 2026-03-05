# Dart App Platform Foundation (AWS-first)

This document defines the first-party app deployment foundation for Dart in this repository.

## Goals

- Provide a production-ready, opinionated component for deploying containerized Dart servers.
- Keep defaults cost-aware for small workloads.
- Preserve Pulumi `Input`/`Output` typing through the full resource graph.
- Offer a migration path for teams moving off hosted app platforms.

## Package

- Package: `pulumi_aws_app_platform`
- Location: `packages/pulumi-aws-app-platform/`
- Primary component: `AwsDartWebService`

## V1 Capabilities

- Build and push container images to ECR.
- Deploy ECS/Fargate service behind an ALB.
- Optional Route53 DNS alias record.
- Optional ACM DNS-validated certificate and HTTPS listener.
- ECS desired-count autoscaling target tracking defaults.

## Cost-aware defaults

- `desiredCount: 1`
- `cpu: 256`
- `memory: 512`
- VPC defaults to public subnets and `NAT=None`.
- autoscaling defaults:
  - `minCount: 1`
  - `maxCount: 2`
  - `cpuTargetUtilizationPercent: 65`

## Examples

- `examples/aws-app-platform/basic-web`
- `examples/aws-app-platform/custom-domain-tls`
- `examples/aws-app-platform/bring-your-own-vpc`

## Template

- `templates/dart-aws-app-platform`

