// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsSecret {
  /// An optional mapping that makes up the Encryption Context for the secret.
  final pulumi.Input<Map<String, String>>? context;

  /// The encryption algorithm that will be used to decrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric KMS key. Valid Values: SYMMETRIC_DEFAULT | RSAES_OAEP_SHA_1 | RSAES_OAEP_SHA_256 | SM2PKE
  final pulumi.Input<String>? encryptionAlgorithm;

  /// An optional list of Grant Tokens for the secret.
  final pulumi.Input<List<String>>? grantTokens;

  /// Specifies the KMS key that AWS KMS uses to decrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric KMS key.
  ///
  /// For more information on `context` and `grant_tokens` see the [KMS
  /// Concepts](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html)
  final pulumi.Input<String>? keyId;

  /// Name to export this secret under in the attributes.
  final pulumi.Input<String> name;

  /// Base64 encoded payload, as returned from a KMS encrypt operation.
  final pulumi.Input<String> payload;

  /// Creates a new [GetSecretsSecret].
  /// [context] An optional mapping that makes up the Encryption Context for the secret.
  /// [encryptionAlgorithm] The encryption algorithm that will be used to decrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric KMS key. Valid Values: SYMMETRIC_DEFAULT | RSAES_OAEP_SHA_1 | RSAES_OAEP_SHA_256 | SM2PKE
  /// [grantTokens] An optional list of Grant Tokens for the secret.
  /// [keyId] Specifies the KMS key that AWS KMS uses to decrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric KMS key.
  /// [name] Name to export this secret under in the attributes.
  /// [payload] Base64 encoded payload, as returned from a KMS encrypt operation.
  GetSecretsSecret({
    this.context,
    this.encryptionAlgorithm,
    this.grantTokens,
    this.keyId,
    required this.name,
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'grantTokens': ?grantTokens,
      'keyId': ?keyId,
      'name': name,
      'payload': payload,
    };
  }

  factory GetSecretsSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecret(
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      encryptionAlgorithm: (() {
        final guardedValue = map['encryptionAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      grantTokens: (() {
        final guardedValue = map['grantTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyId: (() {
        final guardedValue = map['keyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
