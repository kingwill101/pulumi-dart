// ignore_for_file: unused_element, unnecessary_cast


/// Metadata information used by account encryption.
class KeyVaultMetaInfo {
  /// The name of the user managed encryption key.
  final String encryptionKeyName;
  /// The version of the user managed encryption key.
  final String encryptionKeyVersion;
  /// The resource identifier for the user managed Key Vault being used to encrypt.
  final String keyVaultResourceId;

  /// Creates a new [KeyVaultMetaInfo].
  /// [encryptionKeyName] The name of the user managed encryption key.
  /// [encryptionKeyVersion] The version of the user managed encryption key.
  /// [keyVaultResourceId] The resource identifier for the user managed Key Vault being used to encrypt.
  KeyVaultMetaInfo({
    required this.encryptionKeyName,
    required this.encryptionKeyVersion,
    required this.keyVaultResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyName': encryptionKeyName,
      'encryptionKeyVersion': encryptionKeyVersion,
      'keyVaultResourceId': keyVaultResourceId,
    };
  }

  factory KeyVaultMetaInfo.fromMap(Map<String, dynamic> map) {
    return KeyVaultMetaInfo(
      encryptionKeyName: map['encryptionKeyName'] as String,
      encryptionKeyVersion: map['encryptionKeyVersion'] as String,
      keyVaultResourceId: map['keyVaultResourceId'] as String,
    );
  }
}

