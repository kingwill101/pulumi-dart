# Random YAML Example (Dart)

This example is a Dart port of `random-yaml` and creates one
`random:index/RandomPassword` resource.

## Run

1. Create/select a stack:

   ```bash
   pulumi stack init dev
   ```

2. Preview and deploy:

   ```bash
   pulumi up
   ```

3. Read the generated password:

   ```bash
   pulumi stack output --show-secrets password
   ```
