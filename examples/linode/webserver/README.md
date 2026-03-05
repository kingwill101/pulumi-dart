# Web Server on Linode (Dart)

This Dart example ports `thirdparty/pulumi_examples/linode-js-webserver/`.

## Prerequisites

- Pulumi CLI installed
- Linode API token

## Configure

```bash
pulumi config set --secret linode:token <YOUR_LINODE_TOKEN>
```

## Deploy

```bash
pulumi up
```

## Outputs

- `instanceLabel`
- `instanceIP`

## Verify

```bash
curl "$(pulumi stack output instanceIP)"
```

## Destroy

```bash
pulumi destroy --yes
```
