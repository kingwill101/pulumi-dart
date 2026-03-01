// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_ciphertext_get_ciphertext_args_doc}
/// Arguments for getCiphertext.
/// {@endtemplate}
/// {@macro pulumi_kms_get_ciphertext_get_ciphertext_args_doc}
class GetCiphertextArgs {
  /// The Encryption context. If you specify this parameter here, it is also required when you call the Decrypt API operation. For more information, see [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm).
  final pulumi.Input<Map<String, String>>? encryptionContext;
  /// The globally unique ID of the CMK.
  final pulumi.Input<String> keyId;
  /// The plaintext to be encrypted which must be encoded in Base64.
  final pulumi.Input<String> plaintext;

  /// Creates a new [GetCiphertextArgs].
  /// [encryptionContext] The Encryption context. If you specify this parameter here, it is also required when you call the Decrypt API operation. For more information, see [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm).
  /// [keyId] The globally unique ID of the CMK.
  /// [plaintext] The plaintext to be encrypted which must be encoded in Base64.
  GetCiphertextArgs({
    pulumi.Output<Map<String, String>>? encryptionContext,
    required pulumi.Output<String> keyId,
    required pulumi.Output<String> plaintext,
  }) :
      encryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(encryptionContext),
      keyId = pulumi.Input.asInput<String>(keyId),
      plaintext = pulumi.Input.asInput<String>(plaintext);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionContext': ?encryptionContext,
      'keyId': keyId,
      'plaintext': plaintext,
    };
  }

  factory GetCiphertextArgs.fromMap(Map<String, dynamic> map) {
    return GetCiphertextArgs(
      encryptionContext: map['encryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['encryptionContext'] as Map).cast<String, String>()),
      keyId: pulumi.Output.create<String>(map['keyId'] as String),
      plaintext: pulumi.Output.create<String>(map['plaintext'] as String),
    );
  }
}

