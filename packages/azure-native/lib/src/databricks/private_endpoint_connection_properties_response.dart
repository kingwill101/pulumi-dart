// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// The properties of a private endpoint connection
class PrivateEndpointConnectionPropertiesResponse {
  /// GroupIds from the private link service resource.
  final List<String>? groupIds;
  /// Private endpoint
  final PrivateEndpointResponse? privateEndpoint;
  /// Private endpoint connection state
  final PrivateLinkServiceConnectionStateResponse privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] GroupIds from the private link service resource.
  /// [privateEndpoint] Private endpoint
  /// [privateLinkServiceConnectionState] Private endpoint connection state
  /// [provisioningState] Provisioning state of the private endpoint connection.
  PrivateEndpointConnectionPropertiesResponse({
    this.groupIds,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

