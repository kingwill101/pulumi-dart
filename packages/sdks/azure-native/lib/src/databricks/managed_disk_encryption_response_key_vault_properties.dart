// ignore_for_file: unused_element, unnecessary_cast


/// Key Vault input properties for encryption.
class ManagedDiskEncryptionResponseKeyVaultProperties {
  /// The name of KeyVault key.
  final String keyName;
  /// The URI of KeyVault.
  final String keyVaultUri;
  /// The version of KeyVault key.
  final String keyVersion;

  /// Creates a new [ManagedDiskEncryptionResponseKeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The URI of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  ManagedDiskEncryptionResponseKeyVaultProperties({
    required this.keyName,
    required this.keyVaultUri,
    required this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
      'keyVersion': keyVersion,
    };
  }

  factory ManagedDiskEncryptionResponseKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return ManagedDiskEncryptionResponseKeyVaultProperties(
      keyName: map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] as String,
    );
  }
}

