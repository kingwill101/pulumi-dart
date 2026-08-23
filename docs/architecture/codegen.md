# Dart provider code generation

Provider generation remains implemented in Go so it can reuse Pulumi's schema
binding and language-host contracts. The generator is organized as a one-way
pipeline:

```
host adapter -> schema IR -> planning/lowering -> Dart IR -> rendering -> package result -> writer
```

The core pipeline must be deterministic and side-effect free. Environment,
network, schema-loader, workspace, registry, existing-package, and filesystem
access belong at the host boundary. Core stages receive explicit inputs and
return typed values, generated files, and diagnostics.

## Package responsibilities

- `codegen/schemair`: normalized Pulumi package semantics.
- `codegen/dartir`: Dart declarations and types needed by generated SDKs.
- `codegen/lower`: pure schema-to-Dart IR conversion and expression lowering.
- `codegen/render`: deterministic rendering of Dart IR.
- `codegen` source planning: naming, references, paths, and pure assembly of
  the complete in-memory package.
- the language host: RPC translation, configuration and dependency discovery,
  writing results, and workspace synchronization.

Imports must follow that direction. Core packages must not use `os.Getenv`,
perform network calls, or read/write the filesystem.

## Compatibility and testing

Structural refactors preserve generated output byte-for-byte. Modern Dart
features are introduced only after the pipeline split, in focused changes to
the Dart IR, lowering, and render stages.

Each stage has direct table or golden tests. End-to-end RPC tests cover only
boundary behavior. Production files target roughly 120 lines (300 maximum)
and test files roughly 200 lines (450 maximum); cohesive fixtures and static
tables require a documented exception.
