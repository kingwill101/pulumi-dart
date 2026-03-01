# Dart SDK Feature Gap Analysis (Current Snapshot)

This local-only document tracks parity status for the Dart SDK/language host
against upstream Pulumi behavior, based on the repository's current state.

## What changed recently

- ResourceOptions parity with other SDKs:
  - Added `urn`, `hideDiffs`, `replaceWith`, `envVarMappings` fields to ResourceOptions.
  - Added read-by-URN support for custom resources (in addition to existing ID-based reads).
  - Added validation to reject `urn` on non-custom resources (same as `id`).
  - Updated callback_server transform mapping to handle `hideDiffs`/`replaceWith`.
  - Merge semantics align with Go SDK: lists concatenate, maps merge with later values winning.
- Policy lifecycle parity now includes publish/distribution flow:
  - `TestPolicyPublishEnableDisableDart` covers publish -> enable -> enforce ->
    disable behavior.
  - Cloud CI lane now includes this test when service credentials are present.
- Policy runtime edge-case semantics were hardened:
  - `reportViolation(..., urn)` override behavior coverage.
  - deterministic diagnostic ordering coverage.
  - `PolicyNotApplicableError` interaction coverage for analyze/remediate.
  - remediation secret sentinel wire-shape behavior coverage.
- Provider authoring ergonomics improved:
  - default unsupported operations now throw explicit
    `UnsupportedProviderOperationError`.
  - provider server maps those to `unimplemented` gRPC responses.
- Provider authoring docs/examples parity advanced:
  - website guide added at `website/docs/providers/provider-authoring.md`.
  - package-level provider quick-start + example links were added.
- Policy docs/site coverage expanded:
  - added `website/docs/policy/author-policy-pack.md` with examples,
    resources, and upstream Pulumi links.
- Language host analyzer/proxy failure-path tests were added:
  - missing port output,
  - malformed port output,
  - early analyzer process exit,
  - analyzer printing unreachable port without runnable grpc target
    (`TestRunPluginAnalyzerAttachFailsWhenPolicyPackPortIsUnreachable`).
- Runtime long-tail parity advanced:
  - unknown map-key serialization behavior in `runtimeToJson` is now tested.
  - nested property dependency extraction now checks deduped URNs for repeated
    nested resource references.
- Policy stack-graph fidelity coverage completed:
  - test added in `packages/policy/test/policy_test.dart` verifying
    parent/dependency/property-dependency graph translation, options mapping
    (`protect`, `ignoreChanges`, `aliases`, `customTimeouts`, `additionalSecretOutputs`),
    and provider metadata propagation in `analyzeStack`.
- Generator quality parity improved:
  - class/type naming now strips redundant module-derived prefixes (for example
    nested-access-style generated names).
  - module-prefix stripping now handles case-only mismatches in source module names
    (for example `AccessPoint...` and `accesspoint`), and unit tests now cover both
    resource/object/function naming paths.
  - generated package `analysis_options.yaml` migrated from
    `package:very_good_analysis` to `package:lints/recommended.yaml`.
  - generated package templates now include `lints` as a dev dependency so analyzer
    includes resolve when lint config is present.
  - remaining provider packages started migration off `very_good_analysis`:
    `policy` now uses `package:lints/recommended.yaml` and `lints` dependency
    in `dev_dependencies`.
  - workspace generation/publish workflow normalized for local and publishing flows:
    - restored `packages/pubspec.yaml` workspace root to support local multi-package workflows.
    - generator again infers workspace by directory layout and applies `resolution: workspace`.
    - local-source `pulumi` dependency cases remain tagged with `publish_to: none`
      to keep workspace-only paths from being accidentally published.
- Language-host startup hardening improved:
  - added analyzer attach test coverage for unreachable policy ports
    (`TestRunPluginAnalyzerAttachFailsWhenPolicyPackPortIsUnreachable`).
- Policy proxy robustness hardened:
  - port-reading now skips noisy stdout lines before the port number,
    preventing attachment failures when policy packs print startup logs.
  - local change in `pulumi/sdk/policy_proxy.go`; would need upstream pulumi/pulumi PR.

## Current parity snapshot

### 1) Automation API

Status: **High parity, with a few long-tail shape/detail deltas**

Implemented:
- Local workspace lifecycle/config/env/tag APIs.
- Typed operation results, history parsing, and summary metadata parsing.
- Remote workspace lifecycle plumbing and regression coverage.

Current deltas:
- Cloud paths remain eventual and env-gated by design.
- Continue parity checks for less common summary/detail fields as upstream adds
  them.

### 2) Core runtime

Status: **Strong parity**

Implemented:
- Resource/invoke transforms and registration flows.
- Dependency cycle detection and actionable diagnostics.
- Unknown/computed serialization coverage expanded.
- Nested dependency metadata tests expanded.
- Read resource by URN (in addition to ID).
- ResourceOptions parity: `urn`, `hideDiffs`, `replaceWith`, `envVarMappings`.

Current deltas:
- Continue long-tail unknown/computed + nested metadata sweeps in complex
  transform/serialization combinations.

### 3) Dynamic providers

Status: **No explicit pending ports tracked**

Implemented:
- Dynamic provider model and integration coverage are active.

Current deltas:
- Keep watch for obscure update/serialization corner cases.

### 4) Provider authoring SDK

Status: **Implemented and broadly test-backed**

Implemented:
- Public provider API + gRPC server plumbing.
- CRUD/config/diff/call/invoke/construct parameterization coverage.
- Explicit unsupported-operation ergonomics and `unimplemented` mapping.

Current deltas:
- Expand cookbook depth over time (for example more advanced
  `checkConfig`/`diffConfig` and parameterization case studies).

### 5) Policy SDK

Status: **Implemented and actively tested**

Implemented:
- `packages/policy` runtime + authoring surface.
- Broad integration matrix (advisory/mandatory/config/schema/remediate/
  stack tags/dryrun/invalid/simple/enforcement-config/etc.).
- Publish/enable/disable lifecycle coverage in integration + cloud CI lane.
- Stack-graph fidelity test coverage (parent/dependency/property-dependency
  mapping, options translation, provider metadata).

Current deltas:
- Maintain semantic alignment with upstream `pulumi-policy` as it evolves.

### 6) Language host + integration harness

Status: **Core lanes stable; some scenarios are intentionally env-gated**

Implemented:
- Analyzer plugin proxy flow and env propagation.
- Analyzer startup/attach failure-path tests.

Current deltas:
- Additional attach start-up race coverage added for unreachable-policy-port cases.

## Environment-gated vs actual gaps

Expected env-gated skips (not feature gaps):
- service-token/org dependent policy publish tests.
- cloud automation tests requiring deployments API/auth.

Actual feature-gap focus should avoid counting these as missing SDK features.

## Actionable next work queue

1. Runtime long-tail parity sweeps
   - keep adding targeted unknown/computed and nested dependency edge tests as
     upstream scenarios appear.
2. Policy parity maintenance
   - stack-graph fidelity assertions completed; monitor for new upstream
     policy-runtime behaviors to port.
3. Language-host hardening maintenance
   - completed this tranche (missing port / malformed / early exit / unreachable
     port); monitor upstream for newly observed startup race cases.
4. Generator lint baseline hardening
   - continue validating generated/provider-facing packages to ensure no remaining
     `very_good_analysis` dependency remains for local-dev parity.
5. Periodic parity reconciliation
   - keep this file aligned with real failing/pending upstream-dart-port tests.

### 7) Generator naming parity

Status: **Completed in this tranche**

- Fixed redundant-module-prefix stripping to handle case-insensitive module token matches.
- Added/kept unit coverage in `package_codegen_naming_test.go` for nested modules such as
  `s3/accesspoint` and `cdn/cloudfront`.
- Generator tests in `pulumi-language-dart` currently pass (`go test ./...`).

### 8) Generator workspace and publish workflow

Status: **Resolved in this tranche**

- Confirmed generation/workflow alignment:
  - `packages/pubspec.yaml` workspace root now exists and lists local package
    members plus local `pulumi` override.
  - generated package pubspecs include `resolution: workspace` within the workspace.
  - local path `pulumi` dependency generation continues to enforce
    `publish_to: none`.
- Watchpoint:
  - ensure release tooling continues to treat package artifacts as publish artifacts
    even when workspace metadata is present for local development.


## Bottom line

Core subsystems are implemented and heavily tested.
Most remaining work is long-tail parity hardening + docs/ergonomics alignment,
not missing major feature areas.
