// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// Url signing key parameters
class UrlSigningKeyParametersResponse {
  /// Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  final String keyId;
  /// Resource reference to the Azure Key Vault secret. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{secretName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  final ResourceReferenceResponse secretSource;
  /// Version of the secret to be used
  final String secretVersion;
  /// The type of the secret resource.
  /// Expected value is 'UrlSigningKey'.
  final String type;

  /// Creates a new [UrlSigningKeyParametersResponse].
  /// [keyId] Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  /// [secretSource] Resource reference to the Azure Key Vault secret. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{secretName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  /// [secretVersion] Version of the secret to be used
  /// [type] The type of the secret resource.
  UrlSigningKeyParametersResponse({
    required this.keyId,
    required this.secretSource,
    required this.secretVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'secretSource': secretSource.toMap(),
      'secretVersion': secretVersion,
      'type': type,
    };
  }

  factory UrlSigningKeyParametersResponse.fromMap(Map<String, dynamic> map) {
    return UrlSigningKeyParametersResponse(
      keyId: map['keyId'] as String,
      secretSource: ResourceReferenceResponse.fromMap((map['secretSource'] as Map).cast<String, dynamic>()),
      secretVersion: map['secretVersion'] as String,
      type: map['type'] as String,
    );
  }
}

