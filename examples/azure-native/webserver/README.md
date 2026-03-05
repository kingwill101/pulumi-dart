# Web Server on Azure Native (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-py-webserver/`.

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured (for example `az login`)

## Configure

Required:

```bash
pulumi config set username "<vm-admin-username>"
pulumi config set --secret password "<vm-admin-password>"
```

Optional:

```bash
pulumi config set location westus2
```

## Deploy

```bash
pulumi up
```

## Output

- `public_ip`

## Verify

```bash
curl "http://$(pulumi stack output public_ip)"
```

## Destroy

```bash
pulumi destroy --yes
```
