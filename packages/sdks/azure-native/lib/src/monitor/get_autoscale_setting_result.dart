// ignore_for_file: unused_element, unnecessary_cast

import 'autoscale_setting_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutoscaleSetting.
class GetAutoscaleSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource Id
  final String id;
  /// Resource location
  final String location;
  /// Azure resource name
  final String name;
  /// The autoscale setting of the resource.
  final AutoscaleSettingResponse properties;
  /// The system metadata related to the response.
  final SystemDataResponse systemData;
  /// Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater in length than 128 characters and a value no greater in length than 256 characters.
  final Map<String, String>? tags;
  /// Azure resource type
  final String type;

  /// Creates a new [GetAutoscaleSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id
  /// [location] Resource location
  /// [name] Azure resource name
  /// [properties] The autoscale setting of the resource.
  /// [systemData] The system metadata related to the response.
  /// [tags] Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater in length than 128 characters and a value no greater in length than 256 characters.
  /// [type] Azure resource type
  const GetAutoscaleSettingResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAutoscaleSettingResult.fromMap(Map<String, dynamic> map) {
    return GetAutoscaleSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: AutoscaleSettingResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
