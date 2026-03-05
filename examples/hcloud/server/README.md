# hcloud Server (Dart)

This is a Dart-first example using `pulumi_hcloud` to create one server.

## Prerequisites

- A Hetzner Cloud project token in `HCLOUD_TOKEN`

## Configure

Optional:

```bash
pulumi config set location nbg1
pulumi config set image debian-12
pulumi config set serverType cx22
```

## Deploy

```bash
pulumi up
```

## Outputs

- `name`
- `ipv4Address`
- `status`

## Destroy

```bash
pulumi destroy --yes
```
