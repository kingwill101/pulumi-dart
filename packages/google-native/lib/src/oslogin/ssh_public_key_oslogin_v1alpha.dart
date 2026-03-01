import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_oslogin_v1alpha_args.dart';

/// Create an SSH public key
/// Auto-naming is currently not supported for this resource.
class SshPublicKeyOsloginV1alpha extends pulumi.CustomResource {
  /// An expiration time in microseconds since epoch.
  late final pulumi.Output<String> expirationTimeUsec;

  /// The SHA-256 fingerprint of the SSH public key.
  late final pulumi.Output<String> fingerprint;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  late final pulumi.Output<String> key;

  /// The canonical resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> userId;

  /// Creates a new [SshPublicKeyOsloginV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshPublicKeyOsloginV1alpha]. {@macro pulumi_oslogin_v1alpha_ssh_public_key_oslogin_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshPublicKeyOsloginV1alpha(
    String name, {
    SshPublicKeyOsloginV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:oslogin/v1alpha:SshPublicKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.expirationTimeUsec = registerOutput<String>('expirationTimeUsec');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.userId = registerOutput<String>('userId');
  }
}
