// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateEndpointConnectionControllerPrivateEndpointConnection.
class GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the tag for optimistic concurrency control.
  final String eTag;
  /// Relative URL to get this Sites.
  final String id;
  /// Gets the name of the resource.
  final String name;
  /// Gets the properties of the object.
  final PrivateEndpointConnectionPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Gets the tag for optimistic concurrency control.
  /// [id] Relative URL to get this Sites.
  /// [name] Gets the name of the resource.
  /// [properties] Gets the properties of the object.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Gets the resource type.
  GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.eTag,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

