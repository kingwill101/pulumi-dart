// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// For optimistic concurrency control.
  final String? eTag;
  /// Path reference to this private endpoint endpoint connection. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
  final String? id;
  /// Name of the private endpoint endpoint connection.
  final String? name;
  /// Properties of the private endpoint endpoint connection.
  final PrivateEndpointConnectionPropertiesResponse? properties;
  /// Type of the object = [Microsoft.Migrate/assessmentProjects/privateEndpointConnections].
  final String? type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] For optimistic concurrency control.
  /// [id] Path reference to this private endpoint endpoint connection. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
  /// [name] Name of the private endpoint endpoint connection.
  /// [properties] Properties of the private endpoint endpoint connection.
  /// [type] Type of the object = [Microsoft.Migrate/assessmentProjects/privateEndpointConnections].
  const GetPrivateEndpointConnectionResult({
    this.azureApiVersion,
    this.eTag,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'eTag': ?eTag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
