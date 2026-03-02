// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CMK Encryption Configuration
class ElasticEncryptionConfigurationResponse {
  /// Pool Encryption Key Source.
  final pulumi.Input<String> elasticPoolEncryptionKeySource;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final pulumi.Input<String> keyVaultPrivateEndpointResourceId;

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
      elasticPoolEncryptionKeySource: (map['elasticPoolEncryptionKeySource'] as String).input(),
      keyVaultPrivateEndpointResourceId: (map['keyVaultPrivateEndpointResourceId'] as String).input(),
    );
  }
}

