// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_property_response.dart';
import 'server_private_link_service_connection_state_property_response.dart';

/// Properties of a private endpoint connection.
class ServerPrivateEndpointConnectionPropertiesResponse {
  /// Private endpoint which the connection belongs to.
  final PrivateEndpointPropertyResponse? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final ServerPrivateLinkServiceConnectionStatePropertyResponse? privateLinkServiceConnectionState;
  /// State of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [ServerPrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] State of the private endpoint connection.
  ServerPrivateEndpointConnectionPropertiesResponse({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ServerPrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServerPrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointPropertyResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : ServerPrivateLinkServiceConnectionStatePropertyResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

