# GraphQL Endpoint in AWS AppSync (Dart)

Sets up a GraphQL API in AppSync with DynamoDB and resolvers for:
- `getTenantById`
- `addTenant`

## Deploy

```bash
dart pub get
pulumi up
```

## Test

```bash
curl -XPOST \
  -H "Content-Type:application/graphql" \
  -H "x-api-key:$(pulumi stack output key --show-secrets)" \
  -d '{ "query": "mutation AddTenant { addTenant(id: \"123\", name: \"FirstCorp\") { id name } }" }' \
  "$(pulumi stack output endpoint)"
```

## Destroy

```bash
pulumi destroy
```
