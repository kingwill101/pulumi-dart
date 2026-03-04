// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_plaintext_get_plaintext_args_doc}
/// Arguments for getPlaintext.
/// {@endtemplate}
/// {@macro pulumi_kms_get_plaintext_get_plaintext_args_doc}
class GetPlaintextArgs {
  /// The ciphertext to be decrypted.
  final pulumi.Input<String> ciphertextBlob;

  /// (Optional) The Encryption context. If you specify this parameter in the Encrypt or GenerateDataKey API operation, it is also required when you call the Decrypt API operation. For more information, see [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm).
  final pulumi.Input<Map<String, String>>? encryptionContext;

  /// Creates a new [GetPlaintextArgs].
  /// [ciphertextBlob] The ciphertext to be decrypted.
  /// [encryptionContext] (Optional) The Encryption context. If you specify this parameter in the Encrypt or GenerateDataKey API operation, it is also required when you call the Decrypt API operation. For more information, see [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm).
  GetPlaintextArgs({required this.ciphertextBlob, this.encryptionContext});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertextBlob': ciphertextBlob,
      'encryptionContext': ?encryptionContext,
    };
  }

  factory GetPlaintextArgs.fromMap(Map<String, dynamic> map) {
    return GetPlaintextArgs(
      ciphertextBlob: pulumi.Input.fromValue(map['ciphertextBlob'] as String),
      encryptionContext: (() {
        final guardedValue = map['encryptionContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
