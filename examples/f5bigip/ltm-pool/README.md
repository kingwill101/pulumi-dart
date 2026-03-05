# F5 BigIP LTM Pool (Dart)

This Dart example ports `thirdparty/pulumi_examples/f5bigip-ts-ltm-pool/f5bigip-pool/`.

## Prerequisites

- Pulumi CLI installed
- Reachable F5 BigIP instance
- F5 provider config set for the stack:
  - `f5bigip:address`
  - `f5bigip:username`
  - `f5bigip:password` (secret)

## Configure

Required for this program:

```bash
pulumi config set backendInstances "10.0.0.10:80,10.0.0.11:80,10.0.0.12:80"
pulumi config set f5BigIpPrivateIp "10.0.0.200"
```

## Deploy

```bash
pulumi up
```

## Outputs

- `monitorName`
- `poolName`
- `virtualServerName`
- `backendCount`

## Destroy

```bash
pulumi destroy --yes
```
