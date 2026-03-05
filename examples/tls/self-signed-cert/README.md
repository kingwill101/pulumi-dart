# Self-Signed Certificate (Dart)

This is a Dart-first example using `pulumi_tls` to generate:

- an RSA private key
- a self-signed TLS certificate

## Deploy

```bash
pulumi up
```

## Outputs

- `publicKey`
- `certificatePem`
- `validityEndTime`

## Destroy

```bash
pulumi destroy --yes
```
