import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_key_args.dart';

/// Uploads an SSH public key and associates it with the specified IAM user.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSH public keys using the `username`, `ssh_public_key_id`, and `encoding`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/sshKey:SshKey user user:APKAJNCNNJICVN7CFKCA:SSH
/// ```
class SshKey extends pulumi.CustomResource {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  late final pulumi.Output<String> encoding;

  /// The MD5 message digest of the SSH public key.
  late final pulumi.Output<String> fingerprint;

  /// The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  late final pulumi.Output<String> publicKey;

  /// The unique identifier for the SSH public key.
  late final pulumi.Output<String> sshPublicKeyId;

  /// The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is `active`.
  late final pulumi.Output<String> status;

  /// The name of the IAM user to associate the SSH public key with.
  late final pulumi.Output<String> username;

  SshKey(
    String name, {
    SshKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/sshKey:SshKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encoding = registerOutput<String>('encoding');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.publicKey = registerOutput<String>('publicKey');
    this.sshPublicKeyId = registerOutput<String>('sshPublicKeyId');
    this.status = registerOutput<String>('status');
    this.username = registerOutput<String>('username');
  }
}
