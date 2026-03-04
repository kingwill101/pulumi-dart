# Changelog

## 1.1.0

- Implemented analyzer gRPC runtime for Dart-authored policy packs.
- Added policy server support for `Handshake`, `ConfigureStack`, `Configure`, `Analyze`, `AnalyzeStack`, `Remediate`, `GetAnalyzerInfo`, `GetPluginInfo`, and `Cancel`.
- Added initial config mapping and policy metadata serialization parity behavior.

## 1.0.0

- Initial manual Dart package scaffold for `pulumi_policy`.
- Ported core public API types/classes for policy definitions.
- Added typed validation/remediation helper functions.
- Added docs, example, and basic unit tests.
