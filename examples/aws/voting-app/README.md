# Voting app Using Redis and Flask (Dart)

This example deploys a Redis cache and a Flask frontend using ECS/Fargate and ALBs.

## Prerequisites

- Pulumi CLI
- Dart SDK
- Docker
- AWS credentials configured for Pulumi

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-west-2
pulumi config set redisPassword <PASSWORD> --secret
pulumi up
```

The stack exports `frontendURL`.

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
