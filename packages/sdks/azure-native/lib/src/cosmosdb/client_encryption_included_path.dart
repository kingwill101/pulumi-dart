// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// .
class ClientEncryptionIncludedPath {
  /// The identifier of the Client Encryption Key to be used to encrypt the path.
  final pulumi.Input<String> clientEncryptionKeyId;
  /// The encryption algorithm which will be used. Eg - AEAD_AES_256_CBC_HMAC_SHA256.
  final pulumi.Input<String> encryptionAlgorithm;
  /// The type of encryption to be performed. Eg - Deterministic, Randomized.
  final pulumi.Input<String> encryptionType;
  /// Path that needs to be encrypted.
  final pulumi.Input<String> path;

  /// Creates a new [ClientEncryptionIncludedPath].
  /// [clientEncryptionKeyId] The identifier of the Client Encryption Key to be used to encrypt the path.
  /// [encryptionAlgorithm] The encryption algorithm which will be used. Eg - AEAD_AES_256_CBC_HMAC_SHA256.
  /// [encryptionType] The type of encryption to be performed. Eg - Deterministic, Randomized.
  /// [path] Path that needs to be encrypted.
  ClientEncryptionIncludedPath({
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

  factory ClientEncryptionIncludedPath.fromMap(Map<String, dynamic> map) {
    return ClientEncryptionIncludedPath(
      clientEncryptionKeyId: pulumi.Input.fromValue(map['clientEncryptionKeyId'] as String),
      encryptionAlgorithm: pulumi.Input.fromValue(map['encryptionAlgorithm'] as String),
      encryptionType: pulumi.Input.fromValue(map['encryptionType'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

