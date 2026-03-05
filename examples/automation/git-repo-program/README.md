# Git Repo Program (Dart)

This example ports the upstream Go `git_repo_program` Automation API example to
Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/git_repo_program/`

## What it demonstrates

- Using Automation API with a Pulumi program sourced from a Git repository.
- Cloning `https://github.com/pulumi/examples.git` and deploying
  `aws-go-s3-folder`.
- Running full lifecycle from code (`refresh`, `up`, `destroy`).

## Run

```bash
cd examples/automation/git-repo-program
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

## Notes

- This Dart port currently clones the source repo and uses
  `LocalWorkspace.createOrSelectStack` over the checked-out project path.
- It mirrors the upstream scenario intent even though Dart SDK does not yet
  expose a dedicated `UpsertStackRemoteSource` helper.

