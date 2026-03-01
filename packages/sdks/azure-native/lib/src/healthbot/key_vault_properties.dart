// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the key vault.
class KeyVaultProperties {
  /// The name of the key vault key.
  final String keyName;
  /// The Uri of the key vault.
  final String keyVaultUri;
  /// The version of the key vault key.
  final String? keyVersion;
  /// The user assigned identity (ARM resource id) that has access to the key.
  final String? userIdentity;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] The name of the key vault key.
  /// [keyVaultUri] The Uri of the key vault.
  /// [keyVersion] The version of the key vault key.
  /// [userIdentity] The user assigned identity (ARM resource id) that has access to the key.
  KeyVaultProperties({
    required this.keyName,
    required this.keyVaultUri,
    this.keyVersion,
    this.userIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
      'keyVersion': ?keyVersion,
      'userIdentity': ?userIdentity,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
      userIdentity: map['userIdentity'] == null ? null : map['userIdentity'] as String,
    );
  }
}

