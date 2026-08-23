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
| [`CustomTimeouts.read`](https://github.com/pulumi/pulumi/pull/23459) | Missing | Add after regenerating the newer resource protocol. |
| [`Output.recover`](https://github.com/pulumi/pulumi/pull/23642) | Missing | Add typed recovery semantics and parity tests. |
| [Failed registrations produce faulted outputs](https://github.com/pulumi/pulumi/pull/23844) | Needs verification | Add a focused failed-registration test before changing runtime behavior. |
| [Output invoke dependency inference](https://github.com/pulumi/pulumi/pull/24054) | Present | Keep the existing Dart dependency/preview tests. |
| [`onError` resource hooks](https://github.com/pulumi/pulumi/pull/23839) | Present | No action. |
| [Language host cancellation](https://github.com/pulumi/pulumi/releases/tag/v3.229.0) | Present | No action. |
| [`RunPlugin2` language RPC](https://github.com/pulumi/pulumi/releases/tag/v3.229.0) | Missing | Review protocol and host behavior during the protobuf update. |
| [Extension-parameterized packages](https://github.com/pulumi/pulumi/pull/23579) | Partial | Audit generator namespacing and package registration end to end. |
| [`multiArgumentInputs`](https://github.com/pulumi/pulumi/pull/23571) | Missing | Design Dart signatures and add generator fixtures. |

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
