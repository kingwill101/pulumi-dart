// ignore_for_file: unused_element, unnecessary_cast

import 'event_grid_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDigitalTwinsEndpoint.
class GetDigitalTwinsEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource identifier.
  final String id;
  /// Extension resource name.
  final String name;
  /// DigitalTwinsInstance endpoint resource properties.
  final EventGridResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The resource type.
  final String type;

  /// Creates a new [GetDigitalTwinsEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [name] Extension resource name.
  /// [properties] DigitalTwinsInstance endpoint resource properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type.
  GetDigitalTwinsEndpointResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDigitalTwinsEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetDigitalTwinsEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: EventGridResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

