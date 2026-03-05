# Docker Build on AWS Fargate (Dart)

This Dart example ports `thirdparty/pulumi_examples/aws-ts-containers-dockerbuild/`.

## Prerequisites

- Pulumi CLI installed
- AWS credentials configured
- Docker with a working default builder

## Configure

Set AWS region:

```bash
pulumi config set aws:region us-east-1
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
