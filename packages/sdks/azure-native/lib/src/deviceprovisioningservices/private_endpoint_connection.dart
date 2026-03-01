// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties.dart';

/// The private endpoint connection of a provisioning service
class PrivateEndpointConnection {
  /// The properties of a private endpoint connection
  final PrivateEndpointConnectionProperties properties;

  /// Creates a new [PrivateEndpointConnection].
  /// [properties] The properties of a private endpoint connection
  PrivateEndpointConnection({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties.toMap(),
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      properties: PrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

