# Pulumi Dart Project Context

## Purpose

This repository implements Pulumi support for Dart, including:

- the Dart language host (`pulumi-language-dart`)
- the Dart runtime SDK (`pulumi-dart`)
- Dart SDK generation work (`pulumi_generator`)
- integration test harness and fixtures (`integration_tests`)

The near-term objective is to reach practical parity with Pulumi Go/Python/Node for deploy-critical behavior and core developer workflows.

## Architecture Overview

- `pulumi-language-dart/` (Go): language runtime gRPC server used by Pulumi engine.
- `pulumi-dart/` (Dart): deployment/runtime model, resource registration, invoke/call paths, transforms, generated RPC bindings.
- `pulumi_generator/` (Dart): code generation module for provider SDK generation.
- `integration_tests/` (Go + Dart fixtures): end-to-end parity and regression validation.
- `proto/`: Pulumi proto sources; generated Dart outputs live under `pulumi-dart/lib/src/pulumirpc/`.

## Current Priorities

- Close language host RPC parity gaps (`GetRequiredPackages`, `Handshake`, `Cancel`, `GenerateProject`, `GenerateProgram`, `Pack`).
- Improve SDK generation from minimal stubs to schema-driven usable outputs.
- Complete runtime parity for transforms, package references, and lifecycle option forwarding (`ignoreChanges`).
- Expand integration coverage to reduce parity drift.

## Working Conventions

- Prefer small, atomic, reviewable changes.
- Validate each slice with targeted tests before broad sweeps.
- Keep behavior aligned with upstream Pulumi semantics unless divergence is explicitly documented.
- Avoid reverting unrelated local changes.

## Common Commands

- Build language host: `cd pulumi-language-dart && go build .`
- Install language host: `cd pulumi-language-dart && go install ./...`
- Run sample integration test: `cd integration_tests && go test -run TestEmptyDart -v .`
- Generate Pulumi Dart protobufs: `make generate`
- Regenerate external protobuf/google API stubs: `make regenerate-stubs`

## Tracking

- Readiness tracker: `docs/pulumi-dart-readiness-tracker.md`
- Active parity change proposal: `openspec/changes/advance-dart-parity-roadmap/`
