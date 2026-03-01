// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the key vault.
class KeyVaultPropertiesResponse {
  /// Name of Key Vault key.
  final String keyName;
  /// Uri of the key vault.
  final String keyVaultUri;
  /// Version of Key Vault key.
  final String keyVersion;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] Name of Key Vault key.
  /// [keyVaultUri] Uri of the key vault.
  /// [keyVersion] Version of Key Vault key.
  KeyVaultPropertiesResponse({
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

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] as String,
    );
  }
}

