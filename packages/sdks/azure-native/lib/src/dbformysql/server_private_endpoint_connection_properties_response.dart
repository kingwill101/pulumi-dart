// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property_response.dart';
import 'server_private_link_service_connection_state_property_response.dart';

/// Properties of a private endpoint connection.
class ServerPrivateEndpointConnectionPropertiesResponse {
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointPropertyResponse>? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final pulumi.Input<ServerPrivateLinkServiceConnectionStatePropertyResponse>? privateLinkServiceConnectionState;
  /// State of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

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
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointPropertyResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ServerPrivateLinkServiceConnectionStatePropertyResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ServerPrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServerPrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpointPropertyResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (ServerPrivateLinkServiceConnectionStatePropertyResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

