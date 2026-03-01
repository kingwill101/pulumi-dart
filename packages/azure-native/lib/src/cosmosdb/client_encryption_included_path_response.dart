// ignore_for_file: unused_element, unnecessary_cast


/// .
class ClientEncryptionIncludedPathResponse {
  /// The identifier of the Client Encryption Key to be used to encrypt the path.
  final String clientEncryptionKeyId;
  /// The encryption algorithm which will be used. Eg - AEAD_AES_256_CBC_HMAC_SHA256.
  final String encryptionAlgorithm;
  /// The type of encryption to be performed. Eg - Deterministic, Randomized.
  final String encryptionType;
  /// Path that needs to be encrypted.
  final String path;

  /// Creates a new [ClientEncryptionIncludedPathResponse].
  /// [clientEncryptionKeyId] The identifier of the Client Encryption Key to be used to encrypt the path.
  /// [encryptionAlgorithm] The encryption algorithm which will be used. Eg - AEAD_AES_256_CBC_HMAC_SHA256.
  /// [encryptionType] The type of encryption to be performed. Eg - Deterministic, Randomized.
  /// [path] Path that needs to be encrypted.
  ClientEncryptionIncludedPathResponse({
    required this.clientEncryptionKeyId,
    required this.encryptionAlgorithm,
    required this.encryptionType,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientEncryptionKeyId': clientEncryptionKeyId,
      'encryptionAlgorithm': encryptionAlgorithm,
      'encryptionType': encryptionType,
      'path': path,
    };
  }

  factory ClientEncryptionIncludedPathResponse.fromMap(Map<String, dynamic> map) {
    return ClientEncryptionIncludedPathResponse(
      clientEncryptionKeyId: map['clientEncryptionKeyId'] as String,
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      encryptionType: map['encryptionType'] as String,
      path: map['path'] as String,
    );
  }
}

