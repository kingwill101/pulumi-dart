import 'package:pulumi/pulumi.dart';
import 'ssh_public_key_args.dart';

/// The SSH public key information associated with a Google account.
///
///
/// To get more information about SSHPublicKey, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/oslogin/rest/v1/users.sshPublicKeys)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/oslogin)
///
/// ## Example Usage
///
/// ### Os Login Ssh Key Basic
///
///
///
///
/// ## Import
///
/// SSHPublicKey can be imported using any of these accepted formats:
///
/// * `users/{{user}}/sshPublicKeys/{{fingerprint}}`
///
/// * `{{user}}/{{fingerprint}}`
///
/// When using the `pulumi import` command, SSHPublicKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oslogin/sshPublicKey:SshPublicKey default users/{{user}}/sshPublicKeys/{{fingerprint}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oslogin/sshPublicKey:SshPublicKey default {{user}}/{{fingerprint}}
/// ```
class SshPublicKey extends CustomResource {
  /// An expiration time in microseconds since epoch.
  late final Output<String?> expirationTimeUsec;

  /// The SHA-256 fingerprint of the SSH public key.
  late final Output<String> fingerprint;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  late final Output<String> key;

  /// The project ID of the Google Cloud Platform project.
  late final Output<String?> project;

  /// The user email.
  late final Output<String> user;

  SshPublicKey(
    String name, {
    SshPublicKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oslogin/sshPublicKey:SshPublicKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.expirationTimeUsec = registerOutput<String?>('expirationTimeUsec');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.key = registerOutput<String>('key');
    this.project = registerOutput<String?>('project');
    this.user = registerOutput<String>('user');
  }
}
