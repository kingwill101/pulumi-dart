# Docker Build Cloud Image Build (Dart)

This Dart example ports `thirdparty/pulumi_examples/dockerbuildcloud-ts/`.

## Prerequisites

- Pulumi CLI installed
- Docker with Buildx available
- Existing Docker Build Cloud builder name

## Configure

Set your Docker Build Cloud builder:

```bash
pulumi config set builder cloud-org-builder-name
```

## Deploy

```bash
pulumi up
```

## Outputs

- `imageDigest`

## Destroy

```bash
pulumi destroy --yes
```
