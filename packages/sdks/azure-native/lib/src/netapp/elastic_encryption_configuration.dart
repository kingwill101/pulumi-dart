// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CMK Encryption Configuration
class ElasticEncryptionConfiguration {
  /// Pool Encryption Key Source.
  final pulumi.Input<String> elasticPoolEncryptionKeySource;

  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final pulumi.Input<String> keyVaultPrivateEndpointResourceId;

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
      elasticPoolEncryptionKeySource: pulumi.Input.fromValue(
        map['elasticPoolEncryptionKeySource'] as String,
      ),
      keyVaultPrivateEndpointResourceId: pulumi.Input.fromValue(
        map['keyVaultPrivateEndpointResourceId'] as String,
      ),
    );
  }
}
