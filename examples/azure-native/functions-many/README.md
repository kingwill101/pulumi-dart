# Azure Functions in All Supported Languages (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-functions-many/`.

It deploys multiple Function Apps from raw deployment packages:

- .NET
- Node.js
- PowerShell
- Java
- Python (Linux consumption plan)
- .NET on Premium plan

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)
- Optional build tools if rebuilding runtime artifacts:
  - .NET SDK (for `dotnet`)
  - Maven (for `java`)

## Build precompiled runtimes (optional but recommended)

```bash
dotnet publish dotnet
mvn clean package -f java
```

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

- `dotnetEndpoint`
- `nodeEndpoint`
- `powershellEndpoint`
- `javaEndpoint`
- `pythonEndpoint`
- `premiumEndpoint`

## Destroy

```bash
pulumi destroy --yes
```
