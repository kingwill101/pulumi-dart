// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private Endpoint Connection For Private Link Hub - Basic
class PrivateEndpointConnectionForPrivateLinkHubBasicResponse {
  /// identifier
  final String id;
  /// The private endpoint which the connection belongs to.
  final PrivateEndpointResponse? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [PrivateEndpointConnectionForPrivateLinkHubBasicResponse].
  /// [id] identifier
  /// [privateEndpoint] The private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  PrivateEndpointConnectionForPrivateLinkHubBasicResponse({
    required this.id,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionForPrivateLinkHubBasicResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionForPrivateLinkHubBasicResponse(
      id: map['id'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

