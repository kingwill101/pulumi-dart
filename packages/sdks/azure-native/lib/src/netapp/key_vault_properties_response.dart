// ignore_for_file: unused_element, unnecessary_cast


/// Properties of key vault.
class KeyVaultPropertiesResponse {
  /// The name of KeyVault key.
  final String keyName;
  /// UUID v4 used to identify the Azure Key Vault configuration
  final String keyVaultId;
  /// The resource ID of KeyVault.
  final String? keyVaultResourceId;
  /// The Uri of KeyVault.
  final String keyVaultUri;
  /// Status of the KeyVault connection.
  final String status;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultId] UUID v4 used to identify the Azure Key Vault configuration
  /// [keyVaultResourceId] The resource ID of KeyVault.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [status] Status of the KeyVault connection.
  KeyVaultPropertiesResponse({
    required this.keyName,
    required this.keyVaultId,
    this.keyVaultResourceId,
    required this.keyVaultUri,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultId': keyVaultId,
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': keyVaultUri,
      'status': status,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: map['keyName'] as String,
      keyVaultId: map['keyVaultId'] as String,
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : map['keyVaultResourceId'] as String,
      keyVaultUri: map['keyVaultUri'] as String,
      status: map['status'] as String,
    );
  }
}

