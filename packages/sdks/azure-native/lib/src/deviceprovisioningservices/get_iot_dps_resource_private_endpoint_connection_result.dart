// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIotDpsResourcePrivateEndpointConnection.
class GetIotDpsResourcePrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource identifier.
  final String? id;
  /// The resource name.
  final String? name;
  /// The properties of a private endpoint connection
  final PrivateEndpointConnectionPropertiesResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The resource type.
  final String? type;

  /// Creates a new [GetIotDpsResourcePrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [properties] The properties of a private endpoint connection
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type.
  const GetIotDpsResourcePrivateEndpointConnectionResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetIotDpsResourcePrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetIotDpsResourcePrivateEndpointConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
