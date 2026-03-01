// ignore_for_file: unused_element, unnecessary_cast


/// Properties of key vault.
class KeyVaultProperties {
  /// The name of KeyVault key.
  final String? keyName;
  /// The Uri of KeyVault.
  final String? keyVaultUri;
  /// The version of KeyVault key.
  final String? keyVersion;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  KeyVaultProperties({
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

