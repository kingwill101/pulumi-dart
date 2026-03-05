# AWS App Platform: Custom Domain + TLS

Deploys the same low-cost service as `basic-web`, plus:

- Route53 A-record alias
- ACM certificate request
- DNS validation
- HTTPS listener

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi config set aws-app-platform-custom-domain-tls:hostedZoneId Z1234567890
pulumi config set aws-app-platform-custom-domain-tls:hostname app.example.com
pulumi up
```

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```

