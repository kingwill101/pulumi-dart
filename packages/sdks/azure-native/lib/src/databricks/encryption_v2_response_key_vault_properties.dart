// ignore_for_file: unused_element, unnecessary_cast


/// Key Vault input properties for encryption.
class EncryptionV2ResponseKeyVaultProperties {
  /// The name of KeyVault key.
  final String keyName;
  /// The Uri of KeyVault.
  final String keyVaultUri;
  /// The version of KeyVault key.
  final String keyVersion;

  /// Creates a new [EncryptionV2ResponseKeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  EncryptionV2ResponseKeyVaultProperties({
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

  factory EncryptionV2ResponseKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionV2ResponseKeyVaultProperties(
      keyName: map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] as String,
    );
  }
}

