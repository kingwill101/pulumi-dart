# Building and bundling Lambda dependencies (Dart)

This example builds multiple Lambda functions in different languages using Docker and deploys them with Pulumi in Dart.

## Prerequisites

- Pulumi CLI
- Dart SDK
- Docker
- AWS credentials configured for Pulumi

## Deploy

```bash
pulumi stack init dev
pulumi up
```

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```
