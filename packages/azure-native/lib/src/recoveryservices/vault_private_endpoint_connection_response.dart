// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'vault_private_link_service_connection_state_response.dart';

/// Private Endpoint Connection Response Properties.
class VaultPrivateEndpointConnectionResponse {
  /// Group Ids for the Private Endpoint
  final List<String>? groupIds;
  /// The Private Endpoint network resource that is linked to the Private Endpoint connection.
  final PrivateEndpointResponse privateEndpoint;
  /// Gets or sets private link service connection state.
  final VaultPrivateLinkServiceConnectionStateResponse privateLinkServiceConnectionState;
  /// Gets or sets provisioning state of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [VaultPrivateEndpointConnectionResponse].
  /// [groupIds] Group Ids for the Private Endpoint
  /// [privateEndpoint] The Private Endpoint network resource that is linked to the Private Endpoint connection.
  /// [privateLinkServiceConnectionState] Gets or sets private link service connection state.
  /// [provisioningState] Gets or sets provisioning state of the private endpoint connection.
  VaultPrivateEndpointConnectionResponse({
    this.groupIds,
    required this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': privateEndpoint.toMap(),
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory VaultPrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return VaultPrivateEndpointConnectionResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      privateEndpoint: PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: VaultPrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

