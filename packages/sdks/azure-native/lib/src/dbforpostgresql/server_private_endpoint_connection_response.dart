// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_private_endpoint_connection_properties_response.dart';

/// A private endpoint connection under a server
class ServerPrivateEndpointConnectionResponse {
  /// Resource ID of the Private Endpoint Connection.
  final pulumi.Input<String> id;
  /// Private endpoint connection properties
  final pulumi.Input<ServerPrivateEndpointConnectionPropertiesResponse> properties;

  /// Creates a new [ServerPrivateEndpointConnectionResponse].
  /// [id] Resource ID of the Private Endpoint Connection.
  /// [properties] Private endpoint connection properties
  const ServerPrivateEndpointConnectionResponse({
    required this.id,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'properties': pulumi.Input.mapInputValue<ServerPrivateEndpointConnectionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ServerPrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ServerPrivateEndpointConnectionResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      properties: pulumi.Input.fromValue(ServerPrivateEndpointConnectionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

