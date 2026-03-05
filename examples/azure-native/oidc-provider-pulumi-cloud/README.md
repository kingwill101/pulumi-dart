# Azure OIDC Pulumi Program for Pulumi Cloud (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-oidc-provider-pulumi-cloud/`.

It configures Azure + Pulumi Cloud OIDC trust for ESC-style workflows by creating:

- Microsoft Entra application
- Federated identity credentials
- Service principal
- Azure role assignment
- Pulumi Cloud environment (`pulumiservice:Environment`) with OIDC login config

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)
- Pulumi Cloud account

## Configure

Required stack config:

```bash
pulumi config set projectName <pulumi-cloud-project>
pulumi config set environmentName <pulumi-cloud-environment>
```

Optional:

```bash
pulumi config set issuer https://api.pulumi.com/oidc
```

## Deploy

```bash
pulumi up
```

## Outputs

- `escEnvironment`

## Destroy

```bash
pulumi destroy --yes
```
