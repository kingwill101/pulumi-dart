# Azure AD Group (Dart)

This is a Dart-first example using `pulumi_azuread` to create one security group.

## Prerequisites

- Azure AD credentials for the provider (for example via environment variables supported by `pulumi_azuread`)

## Deploy

```bash
pulumi up
```

## Outputs

- `groupId`

## Destroy

```bash
pulumi destroy --yes
```
