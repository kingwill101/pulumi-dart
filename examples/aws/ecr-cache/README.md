# AWS ECR Pull-Through Cache (Dart)

This example creates an ECR repository and pull-through cache rules for registry mirrors.
Optional Docker Hub, GitHub, and GitLab credentials are stored in Secrets Manager.

## Deploy

```bash
dart pub get
pulumi up
```

## Destroy

```bash
pulumi destroy
```
