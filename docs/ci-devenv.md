# devenv integration CI

The Dart integration workflow uses the same devenv environment locally and on
GitHub Actions. The environment pins Go 1.26.x, Dart 3.11.0, and Pulumi CLI
3.225.1 on supported macOS arm64 and Linux x86-64 hosts.

## CI architecture

The `prepare` job builds the Dart language host, compiles the Go integration
test binary, discovers the eight test shards, and prewarms eligible Dart kernel
snapshots. It uploads `.integration-ci` once. Each core shard downloads that
artifact, applies the prewarm manifest to its checkout, and runs its assigned
tests with a four-test parallel limit.

Fixtures with edit steps, generated packages, unresolved dependencies, or
ambiguous entrypoints remain in source mode. These fallbacks are recorded in
the prewarm manifest.

Cloud-only tests use the same prepared artifact but run only when the
1Password service-account secret is available.

## Local commands

Enter the pinned environment and verify its tools:

```console
devenv shell
integration-check
```

Run a small local/file-backend test:

```console
integration-test-empty
```

Run the complete source-mode suite:

```console
git submodule update --init --depth 1 thirdparty/pulumi
integration-test
```

Filter or tune the direct suite with environment variables:

```console
INTEGRATION_TESTS='^(TestEmptyDart|TestRegistryDart)$' \
INTEGRATION_TIMEOUT=15m \
INTEGRATION_PARALLEL=2 \
integration-test
```

Generate local prewarm artifacts without running the suite:

```console
PREWARM_JOBS=4 integration-prewarm
```

Artifacts are written to `.local-prewarm`.

## Reproducing the CI artifact path

The following commands exercise the same compiled binary and prewarm manifest
used by the GitHub matrix:

```console
INTEGRATION_PARTITIONS=8 integration-ci-prepare
INTEGRATION_TESTS=TestEmptyDart integration-ci-run
```

Prepared artifacts are written to `.integration-ci`. `integration-ci-run`
requires `INTEGRATION_TESTS` as a comma-separated list of top-level Go test
names. `INTEGRATION_TIMEOUT` defaults to `60m`, and `INTEGRATION_PARALLEL`
defaults to `4`.

Local-only tests use temporary `file://` Pulumi backends and do not require
`PULUMI_ACCESS_TOKEN`. Cloud-only tests retain their normal credential checks.
