// ignore_for_file: unused_element, unnecessary_cast


/// Pairs of virtual network ID and private endpoint ID. Every virtual network that has volumes encrypted with customer-managed keys needs its own key vault private endpoint.
class KeyVaultPrivateEndpointResponse {
  /// Identifier of the private endpoint to reach the Azure Key Vault
  final String? privateEndpointId;
  /// Identifier for the virtual network id
  final String? virtualNetworkId;

  /// Creates a new [KeyVaultPrivateEndpointResponse].
  /// [privateEndpointId] Identifier of the private endpoint to reach the Azure Key Vault
  /// [virtualNetworkId] Identifier for the virtual network id
  KeyVaultPrivateEndpointResponse({
    this.privateEndpointId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointId': ?privateEndpointId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory KeyVaultPrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPrivateEndpointResponse(
      privateEndpointId: map['privateEndpointId'] == null ? null : map['privateEndpointId'] as String,
      virtualNetworkId: map['virtualNetworkId'] == null ? null : map['virtualNetworkId'] as String,
    );
  }
}

