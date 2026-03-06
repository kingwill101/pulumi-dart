// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// The private endpoint connection of a provisioning service
class PrivateEndpointConnection {
  /// The properties of a private endpoint connection
  final pulumi.Input<PrivateEndpointConnectionProperties> properties;

  /// Creates a new [PrivateEndpointConnection].
  /// [properties] The properties of a private endpoint connection
  const PrivateEndpointConnection({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<PrivateEndpointConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      properties: pulumi.Input.fromValue(PrivateEndpointConnectionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

