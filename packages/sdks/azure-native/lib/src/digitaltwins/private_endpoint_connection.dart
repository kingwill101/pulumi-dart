// ignore_for_file: unused_element, unnecessary_cast

import 'connection_properties.dart';

/// The private endpoint connection of a Digital Twin.
class PrivateEndpointConnection {
  /// The connection properties.
  final ConnectionProperties properties;

  /// Creates a new [PrivateEndpointConnection].
  /// [properties] The connection properties.
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
      properties: ConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

