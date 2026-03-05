# Azure App Service Running Docker Containers on Linux (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-appservice-docker/`.

It demonstrates two scenarios:

- Deploying an existing image from Docker Hub
- Creating an Azure Container Registry, building/pushing a custom image, and running it in App Service

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)
- Docker daemon available locally for image builds

## Configure

Set Azure location:

```bash
pulumi config set azure-native:location westus2
```

## Deploy

```bash
pulumi up
```

## Outputs

- `helloEndpoint`
- `getStartedEndpoint`

## Destroy

```bash
pulumi destroy --yes
```
