# Static Website on Azure Native (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-static-website/`.

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured (for example `az login`)

## Configure

Set Azure region (same behavior as upstream):

```bash
pulumi config set azure-native:location westus
```

## Deploy

```bash
pulumi up
```

## Outputs

- `staticEndpoint`
- `cdnEndpoint`

## Verify

```bash
curl "$(pulumi stack output staticEndpoint)"
curl "$(pulumi stack output cdnEndpoint)"
```

## Destroy

```bash
pulumi destroy --yes
```
