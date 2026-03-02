// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// .
class ClientEncryptionIncludedPathResponse {
  /// The identifier of the Client Encryption Key to be used to encrypt the path.
  final pulumi.Input<String> clientEncryptionKeyId;
  /// The encryption algorithm which will be used. Eg - AEAD_AES_256_CBC_HMAC_SHA256.
  final pulumi.Input<String> encryptionAlgorithm;
  /// The type of encryption to be performed. Eg - Deterministic, Randomized.
  final pulumi.Input<String> encryptionType;
  /// Path that needs to be encrypted.
  final pulumi.Input<String> path;

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
      clientEncryptionKeyId: (map['clientEncryptionKeyId'] as String).input(),
      encryptionAlgorithm: (map['encryptionAlgorithm'] as String).input(),
      encryptionType: (map['encryptionType'] as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

