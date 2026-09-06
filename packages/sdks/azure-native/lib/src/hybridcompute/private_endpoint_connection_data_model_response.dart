// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_response.dart';

/// The Data Model for a Private Endpoint Connection associated with a Private Link Scope
class PrivateEndpointConnectionDataModelResponse {
  /// The ARM Resource Id of the Private Endpoint.
  final pulumi.Input<String> id;
  /// The Name of the Private Endpoint.
  final pulumi.Input<String> name;
  /// The Private Endpoint Connection properties.
  final pulumi.Input<PrivateEndpointConnectionPropertiesResponse?>? properties;
  /// Azure resource type
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionDataModelResponse].
  /// [id] The ARM Resource Id of the Private Endpoint.
  /// [name] The Name of the Private Endpoint.
  /// [properties] The Private Endpoint Connection properties.
  /// [type] Azure resource type
  const PrivateEndpointConnectionDataModelResponse({
    required this.id,
    required this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionDataModelResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionDataModelResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
