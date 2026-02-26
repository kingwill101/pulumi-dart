# Pulumi Dart Parity Backlog (harden-fixme-parity-and-coverage)

Last updated: 2026-02-26

## Inventory Method

Command:

```bash
rg -n "TODO|FIXME|UnimplementedError" pulumi-language-dart pulumi-dart pulumi_generator
```

Current result: no matches.

This document captures the markers that were resolved in this change slice, their classification, and upstream behavior references used for parity decisions.

## Resolved Backlog Items

| Marker location (pre-fix) | Class | Resolution | Upstream reference note |
| --- | --- | --- | --- |
| `pulumi-language-dart/main.go` (`Handshake` missing engine address) | host | return structured `InvalidArgument` gRPC status instead of generic error | `pulumi/sdk/nodejs/cmd/pulumi-language-nodejs/main.go`, `pulumi/sdk/python/cmd/pulumi-language-python/main.go`, `pulumi/sdk/go/pulumi-language-go/main.go` |
| `pulumi-language-dart/main.go` (`GetRequiredPackages` missing program info / dirs) | host | fail-fast with deterministic `InvalidArgument` errors | same host parity references as above |
| `pulumi-language-dart/main.go` (`DeterminePossiblePulumiPackages` TODO) | host | deterministic pubspec discovery from request pwd fallback, no placeholder path | `pulumi/sdk/*/cmd/pulumi-language-*/main.go` package discovery behavior |
| `pulumi-language-dart/main.go` (`GenerateProgram` nil request) | host/generator | explicit request validation + deterministic diagnostics | `pulumi/sdk/nodejs/cmd/pulumi-language-nodejs/main.go` and peers generation RPC contracts |
| `pulumi-language-dart/main.go` (`GenerateProject` missing target dir) | host/generator | explicit `InvalidArgument` for missing target directory | same generation RPC parity references |
| `pulumi-language-dart/main.go` (`GeneratePackage` missing directory/schema + extra-file collisions) | host/generator | deterministic request validation and collision rejection | same generation RPC parity references |
| `pulumi-language-dart/main.go` (`Pack` missing/invalid package directory) | host/generator | deterministic argument validation for file/missing paths | same generation RPC parity references |
| `pulumi-language-dart/main.go` generated TODO comments (`generatedProgramStub`, `generatedPackageExampleMain`) | generator | removed TODO placeholder wording from shipped generated entrypoints | `pulumi/sdk/nodejs/cmd/pulumi-language-nodejs/testdata/...` generated scaffolds do not ship TODO placeholders for runtime-critical flows |
| `pulumi-dart/lib/src/deployment/{call,invoke,deployment}.dart` package registration error swallowing | runtime | surface `registerPackage` failure deterministically and stop monitor RPC requiring `packageRef` | `pulumi/sdk/go/pulumi/context.go` invoke/call/register resource packageRef flows |
| `pulumi-dart/lib/src/deployment/deployment.dart` unchecked `ignoreChanges` path handling | runtime | validate invalid paths before RPC and preserve deterministic ordering | `pulumi/sdk/go/pulumi/context.go` request construction with `ignoreChanges` |
| `pulumi-dart/test/mocks/mock_monitor.dart` (`FIXME`/`UnimplementedError`) | test-only | replaced placeholders with concrete struct conversion and deterministic harness behavior | N/A (test harness-only parity support) |
| `pulumi-dart/test/core/*` (`UnimplementedError` in monitor fakes) | test-only | replaced with explicit `GrpcError.unimplemented`/`StateError` to avoid masked behavior | N/A (test harness-only parity support) |

## Obsolete/Deferred Classification Notes

No production TODO/FIXME/Unimplemented markers are deferred in this slice.

Obsolete placeholders removed outright:

- `pulumi-dart/lib/src/deployment/runner.dart`
  - Rationale: duplicate/dead runner path with placeholder behavior; canonical runtime entrypoint is `Deployment.run` in `pulumi-dart/lib/src/deployment/deployment.dart`.
- `pulumi-dart/lib/src/deployment/engine_logger.dart`
  - Rationale: duplicate/dead logger implementation with placeholder `print` methods; canonical logger is `pulumi-dart/lib/src/engine_logger.dart`.
- `pulumi-dart/lib/src/pulumi_dart_base.dart`
  - Rationale: template stub file not part of runtime surface.

## Coverage + Mutation Follow-up Priorities

Latest local baselines from this change:

- line coverage: `29.27%` (`pulumi-dart/coverage/lcov.info`)
- mutation dry run with coverage: 896 mutants, 256 not covered

Highest-volume mutation hotspots for follow-up slices:

1. `lib/src/deployment/deployment.dart` (173)
2. `lib/src/callback_server.dart` (152)
3. `lib/src/resource/resource.dart` (134)
4. `lib/src/serializer.dart` (123)
5. `lib/src/deserializer.dart` (89)

These are the priority targets for additional assertions and failure-path test expansion.
