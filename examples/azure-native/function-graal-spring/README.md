# Azure Function with Spring Native and GraalVM (Dart)

This Dart example ports:

- `thirdparty/pulumi_examples/azure-java-function-graal-spring/`

It provisions:

- Resource Group
- Storage Account + Blob Container + code Blob
- Linux Consumption App Service Plan
- Function App configured to run from package URL

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)
- Java/Gradle toolchain available for building the function package

## Build the function package

From this example directory:

```bash
cd app
gradle packageDistribution
cd ..
```

This must produce exactly one archive in `app/build/dist/*-app.zip`.

## Configure

```bash
pulumi config set azure-native:location westus
```

## Deploy

```bash
pulumi up
```

## Outputs

- `functionName`
- `endpoint`

Test endpoint:

```bash
curl "$(pulumi stack output endpoint)"
```

## Destroy

```bash
pulumi destroy --yes
```
