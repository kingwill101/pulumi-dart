// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_private_endpoint_response.dart';

/// Result data returned by getAccountKeyVaultStatus.
class GetAccountKeyVaultStatusResult {
  /// The name of the key that should be used for encryption.
  final String? keyName;
  /// Pairs of virtual network ID and private endpoint ID. Every virtual network that has volumes encrypted with customer-managed keys needs its own key vault private endpoint.
  final List<KeyVaultPrivateEndpointResponse>? keyVaultPrivateEndpoints;
  /// Azure resource ID of the key vault/managed HSM that should be used for encryption.
  final String? keyVaultResourceId;
  /// The URI of the key vault/managed HSM that should be used for encryption.
  final String? keyVaultUri;

  /// Creates a new [GetAccountKeyVaultStatusResult].
  /// [keyName] The name of the key that should be used for encryption.
  /// [keyVaultPrivateEndpoints] Pairs of virtual network ID and private endpoint ID. Every virtual network that has volumes encrypted with customer-managed keys needs its own key vault private endpoint.
  /// [keyVaultResourceId] Azure resource ID of the key vault/managed HSM that should be used for encryption.
  /// [keyVaultUri] The URI of the key vault/managed HSM that should be used for encryption.
  GetAccountKeyVaultStatusResult({
    this.keyName,
    this.keyVaultPrivateEndpoints,
    this.keyVaultResourceId,
    this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultPrivateEndpoints': ?keyVaultPrivateEndpoints == null ? null : pulumi.Input.encodeList<KeyVaultPrivateEndpointResponse, Map<String, dynamic>>(keyVaultPrivateEndpoints!, (value) => value.toMap()),
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': ?keyVaultUri,
    };
  }

  factory GetAccountKeyVaultStatusResult.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyVaultStatusResult(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVaultPrivateEndpoints: map['keyVaultPrivateEndpoints'] == null ? null : pulumi.Input.decodeList<KeyVaultPrivateEndpointResponse>(map['keyVaultPrivateEndpoints'], (value) => KeyVaultPrivateEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : map['keyVaultResourceId'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
    );
  }
}

