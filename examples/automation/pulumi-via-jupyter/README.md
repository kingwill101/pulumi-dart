# Pulumi Via Jupyter (Dart)

This example ports the upstream notebook-oriented Automation API scenario to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/python/pulumi_via_jupyter/`

## What it demonstrates

- Notebook-style workflow execution from an application entrypoint.
- Two workflows that map to the upstream notebook themes:
  - `static-website`
  - `database-migration`
- Running each workflow lifecycle with `up` or `destroy`.

## Run

```bash
cd examples/automation/pulumi-via-jupyter
dart run bin/main.dart static-website
```

Run the database workflow:

```bash
dart run bin/main.dart database-migration
```

Destroy either workflow stack:

```bash
dart run bin/main.dart static-website destroy
dart run bin/main.dart database-migration destroy
```

