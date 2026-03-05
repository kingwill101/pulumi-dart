# AWS App Platform: Basic Web

Deploys a low-cost Dart web service with:

- ECR image build/push
- ECS/Fargate service
- ALB URL output

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi up
```

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```

