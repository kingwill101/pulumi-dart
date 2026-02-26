import 'package:pulumi/pulumi.dart';
import 'ssh_public_key_args.dart';

/// Create an SSH public key
/// Auto-naming is currently not supported for this resource.
class SshPublicKey2 extends CustomResource {
  /// An expiration time in microseconds since epoch.
  late final Output<String> expirationTimeUsec;

  /// The SHA-256 fingerprint of the SSH public key.
  late final Output<String> fingerprint;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  late final Output<String> key;

  /// The canonical resource name.
  late final Output<String> name;
  late final Output<String> userId;

  SshPublicKey2(
    String name, {
    SshPublicKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:oslogin/v1:SshPublicKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.expirationTimeUsec = registerOutput<String>('expirationTimeUsec');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.userId = registerOutput<String>('userId');
  }
}
