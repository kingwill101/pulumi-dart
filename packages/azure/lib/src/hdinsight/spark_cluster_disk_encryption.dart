// ignore_for_file: unused_element, unnecessary_cast


class SparkClusterDiskEncryption {
  /// This is an algorithm identifier for encryption. Possible values are `RSA1_5`, `RSA-OAEP`, `RSA-OAEP-256`.
  final String? encryptionAlgorithm;
  /// This is indicator to show whether resource disk encryption is enabled.
  final bool? encryptionAtHostEnabled;
  /// The ID of the key vault key.
  final String? keyVaultKeyId;
  /// This is the resource ID of Managed Identity used to access the key vault.
  final String? keyVaultManagedIdentityId;

  /// Creates a new [SparkClusterDiskEncryption].
  /// [encryptionAlgorithm] This is an algorithm identifier for encryption. Possible values are `RSA1_5`, `RSA-OAEP`, `RSA-OAEP-256`.
  /// [encryptionAtHostEnabled] This is indicator to show whether resource disk encryption is enabled.
  /// [keyVaultKeyId] The ID of the key vault key.
  /// [keyVaultManagedIdentityId] This is the resource ID of Managed Identity used to access the key vault.
  SparkClusterDiskEncryption({
    this.encryptionAlgorithm,
    this.encryptionAtHostEnabled,
    this.keyVaultKeyId,
    this.keyVaultManagedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'keyVaultManagedIdentityId': ?keyVaultManagedIdentityId,
    };
  }

  factory SparkClusterDiskEncryption.fromMap(Map<String, dynamic> map) {
    return SparkClusterDiskEncryption(
      encryptionAlgorithm: map['encryptionAlgorithm'] == null ? null : map['encryptionAlgorithm'] as String,
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : map['encryptionAtHostEnabled'] as bool,
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : map['keyVaultKeyId'] as String,
      keyVaultManagedIdentityId: map['keyVaultManagedIdentityId'] == null ? null : map['keyVaultManagedIdentityId'] as String,
    );
  }
}

