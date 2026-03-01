// ignore_for_file: unused_element, unnecessary_cast


/// CMK Encryption Configuration
class ElasticEncryptionConfigurationResponse {
  /// Pool Encryption Key Source.
  final String elasticPoolEncryptionKeySource;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final String keyVaultPrivateEndpointResourceId;

  /// Creates a new [ElasticEncryptionConfigurationResponse].
  /// [elasticPoolEncryptionKeySource] Pool Encryption Key Source.
  /// [keyVaultPrivateEndpointResourceId] The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  ElasticEncryptionConfigurationResponse({
    required this.elasticPoolEncryptionKeySource,
    required this.keyVaultPrivateEndpointResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticPoolEncryptionKeySource': elasticPoolEncryptionKeySource,
      'keyVaultPrivateEndpointResourceId': keyVaultPrivateEndpointResourceId,
    };
  }

  factory ElasticEncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ElasticEncryptionConfigurationResponse(
      elasticPoolEncryptionKeySource: map['elasticPoolEncryptionKeySource'] as String,
      keyVaultPrivateEndpointResourceId: map['keyVaultPrivateEndpointResourceId'] as String,
    );
  }
}

