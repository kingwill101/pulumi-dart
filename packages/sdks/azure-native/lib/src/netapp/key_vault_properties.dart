// ignore_for_file: unused_element, unnecessary_cast


/// Properties of key vault.
class KeyVaultProperties {
  /// The name of KeyVault key.
  final String keyName;
  /// The resource ID of KeyVault.
  final String? keyVaultResourceId;
  /// The Uri of KeyVault.
  final String keyVaultUri;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultResourceId] The resource ID of KeyVault.
  /// [keyVaultUri] The Uri of KeyVault.
  KeyVaultProperties({
    required this.keyName,
    this.keyVaultResourceId,
    required this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': keyVaultUri,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: map['keyName'] as String,
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : map['keyVaultResourceId'] as String,
      keyVaultUri: map['keyVaultUri'] as String,
    );
  }
}

