# Docker Build Cloud on AWS Fargate (Dart)

This Dart example ports `thirdparty/pulumi_examples/aws-ts-containers-dockerbuildcloud/`.

## Prerequisites

- Pulumi CLI installed
- AWS credentials configured
- Docker with Buildx available
- Existing Docker Build Cloud builder name

## Configure

Set AWS region:

```bash
pulumi config set aws:region us-east-1
```

Set your Docker Build Cloud builder:

```bash
pulumi config set builder cloud-org-builder-name
```

## Deploy

```bash
pulumi up
```

## Outputs

- `url`

## Verify

```bash
curl "$(pulumi stack output url)"
```

## Destroy

```bash
pulumi destroy --yes
```
