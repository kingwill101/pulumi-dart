// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDigitalTwinsEndpoint.
class GetDigitalTwinsEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource identifier.
  final String? id;
  /// Extension resource name.
  final String? name;
  /// DigitalTwinsInstance endpoint resource properties.
  final dynamic properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The resource type.
  final String? type;

  /// Creates a new [GetDigitalTwinsEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [name] Extension resource name.
  /// [properties] DigitalTwinsInstance endpoint resource properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type.
  const GetDigitalTwinsEndpointResult({
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
      'properties': ?properties,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDigitalTwinsEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetDigitalTwinsEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
