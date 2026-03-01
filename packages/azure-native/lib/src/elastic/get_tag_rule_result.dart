// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_tag_rules_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTagRule.
class GetTagRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the rule set.
  final String id;
  /// Name of the rule set.
  final String name;
  /// Properties of the monitoring tag rules.
  final MonitoringTagRulesPropertiesResponse properties;
  /// The system metadata relating to this resource
  final SystemDataResponse systemData;
  /// The type of the rule set.
  final String type;

  /// Creates a new [GetTagRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The id of the rule set.
  /// [name] Name of the rule set.
  /// [properties] Properties of the monitoring tag rules.
  /// [systemData] The system metadata relating to this resource
  /// [type] The type of the rule set.
  GetTagRuleResult({
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

  factory GetTagRuleResult.fromMap(Map<String, dynamic> map) {
    return GetTagRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: MonitoringTagRulesPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

