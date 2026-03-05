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
    this.encryptionContext,
    required this.keyId,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionContext': ?encryptionContext,
      'keyId': keyId,
      'plaintext': plaintext,
    };
  }

  factory GetCiphertextArgs.fromMap(Map<String, dynamic> map) {
    return GetCiphertextArgs(
      encryptionContext: (() { final guardedValue = map['encryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      plaintext: pulumi.Input.fromValue(map['plaintext'] as String),
    );
  }
}

