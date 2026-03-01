// ignore_for_file: unused_element, unnecessary_cast


/// Properties of key vault to get the secrets for password.
class SecretPasswordKeyVaultPropertiesResponse {
  /// The Uri of KeyVault.
  final String keyVaultUri;
  /// The name of KeyVault password secret.
  final String secretName;

  /// Creates a new [SecretPasswordKeyVaultPropertiesResponse].
  /// [keyVaultUri] The Uri of KeyVault.
  /// [secretName] The name of KeyVault password secret.
  SecretPasswordKeyVaultPropertiesResponse({
    required this.keyVaultUri,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUri': keyVaultUri,
      'secretName': secretName,
    };
  }

  factory SecretPasswordKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecretPasswordKeyVaultPropertiesResponse(
      keyVaultUri: map['keyVaultUri'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

