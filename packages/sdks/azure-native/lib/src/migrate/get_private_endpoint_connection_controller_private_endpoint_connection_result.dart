// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateEndpointConnectionControllerPrivateEndpointConnection.
class GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the tag for optimistic concurrency control.
  final String? eTag;
  /// Relative URL to get this Sites.
  final String? id;
  /// Gets the name of the resource.
  final String? name;
  /// Gets the properties of the object.
  final PrivateEndpointConnectionPropertiesResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Gets the resource type.
  final String? type;

  /// Creates a new [GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Gets the tag for optimistic concurrency control.
  /// [id] Relative URL to get this Sites.
  /// [name] Gets the name of the resource.
  /// [properties] Gets the properties of the object.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Gets the resource type.
  const GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult({
    this.azureApiVersion,
    this.eTag,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'eTag': ?eTag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
