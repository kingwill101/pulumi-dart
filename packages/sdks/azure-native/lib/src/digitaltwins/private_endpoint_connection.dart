// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_properties.dart';

/// The private endpoint connection of a Digital Twin.
class PrivateEndpointConnection {
  /// The connection properties.
  final pulumi.Input<ConnectionProperties> properties;

  /// Creates a new [PrivateEndpointConnection].
  /// [properties] The connection properties.
  const PrivateEndpointConnection({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<ConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      properties: pulumi.Input.fromValue(ConnectionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

