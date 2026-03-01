# Secure API with Auth0 JWT Authorizer (Dart)

This example deploys an HTTP API protected by a JWT authorizer configured for Auth0.

## Required config

```bash
pulumi config set jwksUri <https://your-tenant/.well-known/jwks.json>
pulumi config set audience <your-api-audience>
pulumi config set issuer <https://your-tenant/>
```

`jwksUri` is retained for parity with the original example, while this Dart version uses API Gateway JWT authorizer fields (`issuer` + `audience`).

## Deploy

```bash
dart pub get
pulumi up
```

## Destroy

```bash
pulumi destroy
```
