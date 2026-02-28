// ignore_for_file: unused_element, unnecessary_cast

class GetSecretsSecret {
  /// An optional mapping that makes up the Encryption Context for the secret.
  final Map<String, String>? context;

  /// The encryption algorithm that will be used to decrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric KMS key. Valid Values: SYMMETRIC_DEFAULT | RSAES_OAEP_SHA_1 | RSAES_OAEP_SHA_256 | SM2PKE
  final String? encryptionAlgorithm;

  /// An optional list of Grant Tokens for the secret.
  final List<String>? grantTokens;

  /// Specifies the KMS key that AWS KMS uses to decrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric KMS key.
  ///
  /// For more information on `context` and `grant_tokens` see the [KMS
  /// Concepts](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html)
  final String? keyId;

  /// Name to export this secret under in the attributes.
  final String name;

  /// Base64 encoded payload, as returned from a KMS encrypt operation.
  final String payload;

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
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    final encryptionAlgorithmValue = encryptionAlgorithm;
    if (encryptionAlgorithmValue != null) {
      map['encryptionAlgorithm'] = encryptionAlgorithmValue;
    }
    final grantTokensValue = grantTokens;
    if (grantTokensValue != null) {
      map['grantTokens'] = grantTokensValue;
    }
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    map['name'] = name;
    map['payload'] = payload;
    return map;
  }

  factory GetSecretsSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecret(
      context: map['context'] == null
          ? null
          : (map['context'] as Map).cast<String, String>(),
      encryptionAlgorithm: map['encryptionAlgorithm'] == null
          ? null
          : map['encryptionAlgorithm'] as String,
      grantTokens: map['grantTokens'] == null
          ? null
          : (map['grantTokens'] as List).cast<String>(),
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      name: map['name'] as String,
      payload: map['payload'] as String,
    );
  }
}
