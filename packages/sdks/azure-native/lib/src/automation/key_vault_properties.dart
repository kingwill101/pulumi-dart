// ignore_for_file: unused_element, unnecessary_cast


/// Settings concerning key vault encryption for a configuration store.
class KeyVaultProperties {
  /// The name of key used to encrypt data.
  final String? keyName;
  /// The key version of the key used to encrypt data.
  final String? keyVersion;
  /// The URI of the key vault key used to encrypt data.
  final String? keyvaultUri;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] The name of key used to encrypt data.
  /// [keyVersion] The key version of the key used to encrypt data.
  /// [keyvaultUri] The URI of the key vault key used to encrypt data.
  KeyVaultProperties({
    this.keyName,
    this.keyVersion,
    this.keyvaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVersion': ?keyVersion,
      'keyvaultUri': ?keyvaultUri,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
      keyvaultUri: map['keyvaultUri'] == null ? null : map['keyvaultUri'] as String,
    );
  }
}

