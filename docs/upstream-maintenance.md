# Upstream maintenance

Provider schema regeneration does not cover changes to the Pulumi language
SDKs, language runtime protocol, Automation API, or hand-written provider
overlays. Review those separately with:

```bash
repodoc upstream:check --core-only
repodoc upstream:check --provider aws
repodoc upstream:check --details
repodoc upstream:check --json
```

The review ledger is `repodoc/upstream_review.json`. Its versions mean “reviewed
through,” not “currently installed.” Advance a boundary only after its findings
have been classified and any required Dart work has been completed or recorded.

## Six-month audit: 2026-02-23 through 2026-08-23

The first audit covers 76 releases across `pulumi/pulumi`,
`pulumi/pulumi-dotnet`, and `pulumi/pulumi-java`, plus the retained provider
repositories. The following high-signal core items require action or an explicit
parity decision.

| Upstream change | Dart status | Next action |
| --- | --- | --- |
| Double-underscore property preservation | Present | Covered by serializer round-trip tests. |
| [`CustomTimeouts.read`](https://github.com/pulumi/pulumi/pull/23459) | Present | Covered across resource options, transforms, provider authoring, and policy types. |
| [`Output.recover`](https://github.com/pulumi/pulumi/pull/23642) | Present | Typed recovery and metadata propagation are covered by focused tests. |
| [Failed registrations produce faulted outputs](https://github.com/pulumi/pulumi/pull/23844) | Present | Existing failed-registration tests verify pending outputs fault before errors are rethrown. |
| [Output invoke dependency inference](https://github.com/pulumi/pulumi/pull/24054) | Present | Keep the existing Dart dependency/preview tests. |
| [`onError` resource hooks](https://github.com/pulumi/pulumi/pull/23839) | Present | No action. |
| [Language host cancellation](https://github.com/pulumi/pulumi/releases/tag/v3.229.0) | Present | No action. |
| [`RunPlugin2` language RPC](https://github.com/pulumi/pulumi/releases/tag/v3.229.0) | Not applicable | The RPC was removed from the current upstream protocol before the Dart protocol refresh. |
| [Extension-parameterized packages](https://github.com/pulumi/pulumi/pull/23579) | Present | Generator registration, protocol mapping, and deployment-scoped reference caching are covered end to end. |
| [`multiArgumentInputs`](https://github.com/pulumi/pulumi/pull/23571) | Present | Schema-declared positional order and generated invoke signatures are covered end to end. |

Provider findings are classified differently:

- `provider-runtime`: inherited by installing the updated provider plugin;
- `provider-sdk`: hand-written overlays or language-specific helpers requiring
  a Dart parity decision;
- `codegen` and `protocol`: may require generator or host work;
- ordinary resource additions are omitted because schema regeneration owns them.

`libvirt` is intentionally absent from the overlay ledger: its schema points to
the upstream Terraform provider rather than a Pulumi repository containing
language SDK or overlay code.

The AWS `v7.41.0` NodeJS-only overlays were reviewed and require no Dart work:
they restore deprecated Node compatibility APIs. The AWSX ECR fixes in
[#2058](https://github.com/pulumi/pulumi-awsx/pull/2058) and
[#1943](https://github.com/pulumi/pulumi-awsx/pull/1943) are component-provider
runtime fixes inherited through the provider rather than Dart SDK changes.
