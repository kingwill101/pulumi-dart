// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_tag_rules_properties_tag_rule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTagRule.
class GetTagRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The id of the rule set.
  final String? id;
  /// Name of the rule set.
  final String? name;
  /// Properties of the monitoring tag rules.
  final MonitoringTagRulesPropertiesTagRuleResponse? properties;
  /// The system metadata relating to this resource
  final SystemDataResponse? systemData;
  /// The type of the rule set.
  final String? type;

  /// Creates a new [GetTagRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The id of the rule set.
  /// [name] Name of the rule set.
  /// [properties] Properties of the monitoring tag rules.
  /// [systemData] The system metadata relating to this resource
  /// [type] The type of the rule set.
  const GetTagRuleResult({
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

  factory GetTagRuleResult.fromMap(Map<String, dynamic> map) {
    return GetTagRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return MonitoringTagRulesPropertiesTagRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
