# Docker Multi-Container App (Dart)

This example runs two local Docker containers:

- a Redis container
- an app container built from `app/`

The app reads and updates a counter value in Redis and exports `url`.

## Prerequisites

- Pulumi CLI installed
- Docker installed and running

## Run

1. Create/select a stack:

   ```bash
   pulumi stack init dev
   ```

2. Deploy:

   ```bash
   pulumi up
   ```

3. Read the URL and test:

   ```bash
   pulumi stack output url
   curl "$(pulumi stack output url)"
   ```

## Clean up

```bash
pulumi destroy
```
