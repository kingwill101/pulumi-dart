import 'package:pulumi/pulumi.dart';
import 'ssh_public_key_args2.dart';

/// Create an SSH public key
/// Auto-naming is currently not supported for this resource.
class SshPublicKey3 extends CustomResource {
  /// An expiration time in microseconds since epoch.
  late final Output<String> expirationTimeUsec;

  /// The SHA-256 fingerprint of the SSH public key.
  late final Output<String> fingerprint;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  late final Output<String> key;

  /// The canonical resource name.
  late final Output<String> name;
  late final Output<String> userId;

  SshPublicKey3(
    String name, {
    SshPublicKeyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:oslogin/v1alpha:SshPublicKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.expirationTimeUsec = Output.createUnknown<String>();
    this.fingerprint = Output.createUnknown<String>();
    this.key = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.userId = Output.createUnknown<String>();
  }
}
