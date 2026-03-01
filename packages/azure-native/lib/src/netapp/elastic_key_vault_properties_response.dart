// ignore_for_file: unused_element, unnecessary_cast


/// Properties of key vault.
class ElasticKeyVaultPropertiesResponse {
  /// The name of KeyVault key.
  final String? keyName;
  /// The resource ID of KeyVault.
  final String? keyVaultResourceId;
  /// The Uri of KeyVault.
  final String? keyVaultUri;
  /// Status of the KeyVault connection.
  final String status;

  /// Creates a new [ElasticKeyVaultPropertiesResponse].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultResourceId] The resource ID of KeyVault.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [status] Status of the KeyVault connection.
  ElasticKeyVaultPropertiesResponse({
    this.keyName,
    this.keyVaultResourceId,
    this.keyVaultUri,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': ?keyVaultUri,
      'status': status,
    };
  }

  factory ElasticKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticKeyVaultPropertiesResponse(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : map['keyVaultResourceId'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      status: map['status'] as String,
    );
  }
}

