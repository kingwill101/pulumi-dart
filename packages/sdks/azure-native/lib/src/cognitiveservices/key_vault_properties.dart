// ignore_for_file: unused_element, unnecessary_cast


/// Properties to configure keyVault Properties
class KeyVaultProperties {
  final String? identityClientId;
  /// Name of the Key from KeyVault
  final String? keyName;
  /// Uri of KeyVault
  final String? keyVaultUri;
  /// Version of the Key from KeyVault
  final String? keyVersion;

  /// Creates a new [KeyVaultProperties].
  /// [identityClientId] Optional.
  /// [keyName] Name of the Key from KeyVault
  /// [keyVaultUri] Uri of KeyVault
  /// [keyVersion] Version of the Key from KeyVault
  KeyVaultProperties({
    this.identityClientId,
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

