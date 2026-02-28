# Dart SDK Feature Gap Analysis (Reassessed)

This is a reassessment of Dart SDK parity using the source tree in this repo.

Reviewed paths:
- Dart: `pulumi-dart/lib/src/`, `pulumi-dart/lib/automation.dart`, `pulumi-dart/lib/pulumi.dart`
- Node: `pulumi/sdk/nodejs/automation/`, `pulumi/sdk/nodejs/runtime/`, `pulumi/sdk/nodejs/dynamic/`, `pulumi/sdk/nodejs/provider/`
- Python: `pulumi/sdk/python/lib/pulumi/automation/`, `pulumi/sdk/python/lib/pulumi/runtime/`, `pulumi/sdk/python/lib/pulumi/dynamic/`, `pulumi/sdk/python/lib/pulumi/provider/`
- Go: `pulumi/sdk/go/pulumi/`

## Key corrections vs previous draft

- Dart **does have Invoke Transform support** (`InvokeTransform`, callback plumbing, stack registration).
- Dart Automation now has `remote_workspace.dart`, `events.dart`, and `version.dart`; those were previously marked missing.
- Dart already has automation command/error modeling in `command.dart`; "errors" is not fully missing.
- Node policy pack support is **not present in this repo tree** under `pulumi/sdk/nodejs`; Python and Go policy SDK code is present here.

## Current parity summary

### 1) Automation API

Status: **Partial** (improved, but still behind Node/Python in important areas)

Implemented in Dart:
- Local workspace basics: create/select/createOrSelect stack, run commands, whoami, list stacks (`pulumi-dart/lib/src/automation/local_workspace.dart`)
- Stack lifecycle basics: preview/up/refresh/destroy/cancel/history/outputs (`pulumi-dart/lib/src/automation/stack.dart`)
- Config operations on stack: set/get/remove, setAll/getAll (`pulumi-dart/lib/src/automation/stack.dart`)
- Remote workspace helpers and remote CLI arg construction (`pulumi-dart/lib/src/automation/remote_workspace.dart`)
- CLI version parsing/validation (`pulumi-dart/lib/src/automation/version.dart`)
- Basic event model types (`pulumi-dart/lib/src/automation/events.dart`)

Still missing (relative to Node/Python automation):
- Workspace abstraction parity (`Workspace` interface equivalent)
- Project and stack settings APIs (`ProjectSettings`, `StackSettings` load/save)
- Plugin management APIs (`installPlugin`, `removePlugin`, `listPlugins`)
- Stack state import/export (`exportStack`, `importStack`)
- Rich operation result types (`UpResult`, `PreviewResult`, etc.) with structured summaries
- Full engine event stream model and callback plumbing (`onEvent`-style parity)
- Separate `RemoteStack` type (Dart currently reuses `Stack`)
- Tag APIs (`tag.ts`/`_tag.py` parity)
- Server subsystem parity (`server.ts`/`_server.py`)
- Inline program automation mode (function/closure-defined programs)

### 2) Runtime features

Status: **Mostly implemented for core runtime**, **partial for testing ergonomics parity**

Implemented in Dart runtime:
- Resource transforms
- Resource hooks
- Invoke transforms

Evidence:
- `pulumi-dart/lib/src/invoke.dart`
- `pulumi-dart/lib/src/deployment/deployment.dart`
- `pulumi-dart/lib/src/callback_server.dart`
- `pulumi-dart/test/core/runtime/callback_server_test.dart`

Gaps:
- No stable/public `runtime.setMocks` API exported from `package:pulumi/pulumi.dart` like Node/Python.
  - Dart has internal/testing harnesses (`pulumi-dart/test/mocks/`) and currently internal runtime mock API in `pulumi-dart/lib/src/runtime_api.dart`.
- No `InvokeOutput`/`InvokeOutputOptions`-style public API parity.

### 3) Dynamic providers

Status: **API layer present, runtime missing**

Implemented in Dart:
- Provider model/result types and dynamic `Resource` wrapper (`pulumi-dart/lib/src/dynamic/dynamic.dart`)

Missing in Dart:
- Dynamic provider runtime process/server
- Provider serialization mechanism equivalent to Node/Python implementations

Language reality:
- In this repo state, Go also has no dynamic provider subsystem under `pulumi/sdk/go/pulumi/`.

### 4) Provider authoring SDK (building providers)

Status: **Missing in Dart**

Node/Python have provider authoring subsystems (`provider/` with server plumbing).

Dart currently only has provider *consumption* primitives (`provider_resource.dart`), not provider authoring/server APIs.

### 5) Policy SDK

Status in this repo:
- Python: present (`pulumi/sdk/python/lib/pulumi/policy/`)
- Go: present (`pulumi/sdk/go/pulumi/policyx/`)
- Node: not present under `pulumi/sdk/nodejs/` in this repo tree
- Dart: missing

## Priority recommendations (updated)

1. **Automation parity first**
   - Add workspace abstraction, settings APIs, plugin management, stack state import/export, and richer result/event APIs.

2. **Decide testing API stance**
   - Either keep mocks internal-only, or promote a stable public `runtime.setMocks` surface to match Node/Python developer experience.

3. **Provider authoring SDK**
   - Useful for ecosystem growth; larger scope than runtime polish but high leverage.

4. **Dynamic runtime**
   - Keep lower priority unless there is a concrete product need; cross-language support remains uneven.

## Bottom line

The earlier analysis over-reported some gaps. The Dart port has progressed more than that draft showed (notably Invoke Transforms and Automation remote/version/events pieces). The biggest remaining delta is still **Automation API breadth** and **public testing ergonomics parity**.
