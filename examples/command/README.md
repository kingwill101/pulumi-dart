# Command Dart Examples Status

This folder tracks Dart-first examples for `pulumi_command`.

Catalog refreshed from `thirdparty/pulumi-command/examples` on March 4, 2026.

## Progress

- Total tracked examples: **19**
- Implemented for Dart (runnable): **19**
- Remaining to port: **0**

## Tracking checklist

- [x] `local-command` (Dart-first, no direct upstream mapping)
- [x] `aws-ec2-command` (`thirdparty/pulumi-command/examples/aws-py-ec2-command`) `done`
- [x] `curl` (`thirdparty/pulumi-command/examples/curl`) `done`
- [x] `delete-from-stdout` (`thirdparty/pulumi-command/examples/delete-from-stdout`) `done`
- [x] `ec2-copyfile` (`thirdparty/pulumi-command/examples/ec2_copyfile`) `done`
- [x] `ec2-dir-copy` (`thirdparty/pulumi-command/examples/ec2_dir_copy`) `done`
- [x] `ec2-remote` (`thirdparty/pulumi-command/examples/ec2_remote`) `done`
- [x] `ec2-remote-proxy` (`thirdparty/pulumi-command/examples/ec2_remote_proxy`) `done`
- [x] `gcp-compute-command` (`thirdparty/pulumi-command/examples/gcp-py-compute-command`) `done`
- [x] `kubernetes` (`thirdparty/pulumi-command/examples/kubernetes`) `done`
- [x] `lambda` (`thirdparty/pulumi-command/examples/lambda-ts`) `done`
- [x] `lambda-invoke` (`thirdparty/pulumi-command/examples/lambda-invoke`) `done`
- [x] `random` (`thirdparty/pulumi-command/examples/random` and `thirdparty/pulumi-command/examples/random-go`) `done`
- [x] `simple` (`thirdparty/pulumi-command/examples/simple` and `thirdparty/pulumi-command/examples/simple-py`) `done`
- [x] `simple-ansible` (`thirdparty/pulumi-command/examples/simple-ansible`) `done`
- [x] `simple-run` (`thirdparty/pulumi-command/examples/simple-run`) `done`
- [x] `simple-with-update` (`thirdparty/pulumi-command/examples/simple-with-update`) `done`
- [x] `stderr` (`thirdparty/pulumi-command/examples/stderr`) `done`
- [x] `stdin` (`thirdparty/pulumi-command/examples/stdin` and `thirdparty/pulumi-command/examples/stdin-go`) `done`

## Notes

- `thirdparty/pulumi-command/examples/testdata` is fixture data, not a standalone example project.
- Language-specific upstream variants are consolidated into one canonical Dart example directory per scenario.
- SSH-based examples (`aws-ec2-command`, `ec2-copyfile`, `ec2-dir-copy`, `ec2-remote`, `ec2-remote-proxy`, `gcp-compute-command`) need key material via:
- `privateKeyBase64` config (preferred), or
- `~/.ssh/id_rsa` present on the machine running the Pulumi program.
- `curl` requires config key `githubToken`.
- `lambda-invoke` requires config key `aws:region`.
- `kubernetes` requires `vpcId`, `publicSubnetIds`, and `privateSubnetIds` config values.
