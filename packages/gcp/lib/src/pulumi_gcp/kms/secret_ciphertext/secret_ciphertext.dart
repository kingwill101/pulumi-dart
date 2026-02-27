import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_ciphertext_args.dart';

/// Encrypts secret data with Google Cloud KMS and provides access to the ciphertext.
///
///
/// > **NOTE:** Using this resource will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
///
/// To get more information about SecretCiphertext, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys/encrypt)
/// * How-to Guides
/// * [Encrypting and decrypting data with a symmetric key](https://cloud.google.com/kms/docs/encrypt-decrypt)
///
///
///
/// ## Example Usage
///
/// ### Kms Secret Ciphertext Basic
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class SecretCiphertext extends pulumi.CustomResource {
  /// The additional authenticated data used for integrity checks during encryption and decryption.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> additionalAuthenticatedData;

  /// Contains the result of encrypting the provided plaintext, encoded in base64.
  late final pulumi.Output<String> ciphertext;

  /// The full name of the CryptoKey that will be used to encrypt the provided plaintext.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'`
  late final pulumi.Output<String> cryptoKey;

  /// The plaintext to be encrypted.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> plaintext;

  SecretCiphertext(
    String name, {
    SecretCiphertextArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/secretCiphertext:SecretCiphertext',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalAuthenticatedData =
        registerOutput<String?>('additionalAuthenticatedData');
    this.ciphertext = registerOutput<String>('ciphertext');
    this.cryptoKey = registerOutput<String>('cryptoKey');
    this.plaintext = registerOutput<String>('plaintext');
  }
}
