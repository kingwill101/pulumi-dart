// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_private_endpoint_response.dart';

/// Result data returned by getAccountChangeKeyVaultInformation.
class GetAccountChangeKeyVaultInformationResult {
  /// The name of the key that should be used for encryption.
  final String? keyName;
  /// Pairs of virtual network ID and private endpoint ID. Every virtual network that has volumes encrypted with customer-managed keys needs its own key vault private endpoint.
  final List<KeyVaultPrivateEndpointResponse>? keyVaultPrivateEndpoints;
  /// Azure resource ID of the key vault/managed HSM that should be used for encryption.
  final String? keyVaultResourceId;
  /// The URI of the key vault/managed HSM that should be used for encryption.
  final String? keyVaultUri;

  /// Creates a new [GetAccountChangeKeyVaultInformationResult].
  /// [keyName] The name of the key that should be used for encryption.
  /// [keyVaultPrivateEndpoints] Pairs of virtual network ID and private endpoint ID. Every virtual network that has volumes encrypted with customer-managed keys needs its own key vault private endpoint.
  /// [keyVaultResourceId] Azure resource ID of the key vault/managed HSM that should be used for encryption.
  /// [keyVaultUri] The URI of the key vault/managed HSM that should be used for encryption.
  const GetAccountChangeKeyVaultInformationResult({
    this.keyName,
    this.keyVaultPrivateEndpoints,
    this.keyVaultResourceId,
    this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultPrivateEndpoints': ?(() { final guardedValue = keyVaultPrivateEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<KeyVaultPrivateEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': ?keyVaultUri,
    };
  }

  factory GetAccountChangeKeyVaultInformationResult.fromMap(Map<String, dynamic> map) {
    return GetAccountChangeKeyVaultInformationResult(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultPrivateEndpoints: (() { final guardedValue = map['keyVaultPrivateEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyVaultPrivateEndpointResponse>(guardedValue, (value) => KeyVaultPrivateEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      keyVaultResourceId: (() { final guardedValue = map['keyVaultResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

