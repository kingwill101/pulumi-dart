// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_private_endpoint_connection_properties_response.dart';

/// Private endpoint connection definition.
class RegistryPrivateEndpointConnectionResponse {
  /// This is the private endpoint connection name created on SRP
  /// Full resource id: /subscriptions/{subId}/resourceGroups/{rgName}/providers/Microsoft.MachineLearningServices/{resourceType}/{resourceName}/registryPrivateEndpointConnections/{peConnectionName}
  final pulumi.Input<String>? id;

  /// Same as workspace location.
  final pulumi.Input<String>? location;

  /// Properties of the Private Endpoint Connection
  final pulumi.Input<RegistryPrivateEndpointConnectionPropertiesResponse>?
  properties;

  /// Creates a new [RegistryPrivateEndpointConnectionResponse].
  /// [id] This is the private endpoint connection name created on SRP
  /// [location] Same as workspace location.
  /// [properties] Properties of the Private Endpoint Connection
  RegistryPrivateEndpointConnectionResponse({
    this.id,
    this.location,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryPrivateEndpointConnectionPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory RegistryPrivateEndpointConnectionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegistryPrivateEndpointConnectionResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryPrivateEndpointConnectionPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
