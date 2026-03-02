// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_private_endpoint_connection_properties_response.dart';

/// A private endpoint connection under a server
class ServerPrivateEndpointConnectionResponse {
  /// Resource Id of the private endpoint connection.
  final pulumi.Input<String> id;
  /// Private endpoint connection properties
  final pulumi.Input<ServerPrivateEndpointConnectionPropertiesResponse> properties;

  /// Creates a new [ServerPrivateEndpointConnectionResponse].
  /// [id] Resource Id of the private endpoint connection.
  /// [properties] Private endpoint connection properties
  ServerPrivateEndpointConnectionResponse({
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
      id: (map['id'] as String).input(),
      properties: (ServerPrivateEndpointConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

