// ignore_for_file: unused_element, unnecessary_cast

import 'alert_processing_rule_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAlertProcessingRuleByName.
class GetAlertProcessingRuleByNameResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource Id
  final String id;
  /// Resource location
  final String location;
  /// Azure resource name
  final String name;
  /// Alert processing rule properties.
  final AlertProcessingRulePropertiesResponse properties;
  /// Alert processing rule system data.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure resource type
  final String type;

  /// Creates a new [GetAlertProcessingRuleByNameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id
  /// [location] Resource location
  /// [name] Azure resource name
  /// [properties] Alert processing rule properties.
  /// [systemData] Alert processing rule system data.
  /// [tags] Resource tags
  /// [type] Azure resource type
  const GetAlertProcessingRuleByNameResult({
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

  factory GetAlertProcessingRuleByNameResult.fromMap(Map<String, dynamic> map) {
    return GetAlertProcessingRuleByNameResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: AlertProcessingRulePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

