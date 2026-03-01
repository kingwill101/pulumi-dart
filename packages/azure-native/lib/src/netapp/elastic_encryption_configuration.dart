// ignore_for_file: unused_element, unnecessary_cast


/// CMK Encryption Configuration
class ElasticEncryptionConfiguration {
  /// Pool Encryption Key Source.
  final String elasticPoolEncryptionKeySource;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final String keyVaultPrivateEndpointResourceId;

  /// Creates a new [ElasticEncryptionConfiguration].
  /// [elasticPoolEncryptionKeySource] Pool Encryption Key Source.
  /// [keyVaultPrivateEndpointResourceId] The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  ElasticEncryptionConfiguration({
    required this.elasticPoolEncryptionKeySource,
    required this.keyVaultPrivateEndpointResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticPoolEncryptionKeySource': elasticPoolEncryptionKeySource,
      'keyVaultPrivateEndpointResourceId': keyVaultPrivateEndpointResourceId,
    };
  }

  factory ElasticEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ElasticEncryptionConfiguration(
      elasticPoolEncryptionKeySource: map['elasticPoolEncryptionKeySource'] as String,
      keyVaultPrivateEndpointResourceId: map['keyVaultPrivateEndpointResourceId'] as String,
    );
  }
}

