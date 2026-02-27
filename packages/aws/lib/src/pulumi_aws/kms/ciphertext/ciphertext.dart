import 'package:pulumi/pulumi.dart';
import 'ciphertext_args.dart';

/// The KMS ciphertext resource allows you to encrypt plaintext into ciphertext
/// by using an AWS KMS customer master key. The value returned by this resource
/// is stable across every apply. For a changing ciphertext value each apply, see
/// the `aws.kms.Ciphertext` data source.
class Ciphertext extends CustomResource {
  /// Base64 encoded ciphertext
  late final Output<String> ciphertextBlob;

  /// An optional mapping that makes up the encryption context.
  late final Output<Map<String, String>?> context;

  /// Globally unique key ID for the customer master key.
  late final Output<String> keyId;

  /// Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  late final Output<String?> plaintext;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Data to be encrypted. Note that this may show up in logs. It will not be stored in the state file.
  late final Output<String?> plaintextWo;

  /// Used together with `plaintext_wo` to trigger a replacement. Modify this value when a replacement is required.
  late final Output<String?> plaintextWoVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Ciphertext(
    String name, {
    CiphertextArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kms/ciphertext:Ciphertext',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ciphertextBlob = registerOutput<String>('ciphertextBlob');
    this.context = registerOutput<Map<String, String>?>('context');
    this.keyId = registerOutput<String>('keyId');
    this.plaintext = registerOutput<String?>('plaintext');
    this.plaintextWo = registerOutput<String?>('plaintextWo');
    this.plaintextWoVersion = registerOutput<String?>('plaintextWoVersion');
    this.region = registerOutput<String>('region');
  }
}
