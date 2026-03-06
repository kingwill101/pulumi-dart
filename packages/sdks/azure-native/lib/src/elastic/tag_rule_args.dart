// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_tag_rules_properties.dart';

/// {@template pulumi_elastic_tag_rule_args_doc}
/// The set of arguments for TagRule.
/// {@endtemplate}
/// {@macro pulumi_elastic_tag_rule_args_doc}
class TagRuleArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// Properties of the monitoring tag rules.
  final pulumi.Input<MonitoringTagRulesProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Tag Rule Set resource name
  final pulumi.Input<String>? ruleSetName;

  /// Creates a new [TagRuleArgs].
  /// [monitorName] Monitor resource name
  /// [properties] Properties of the monitoring tag rules.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleSetName] Tag Rule Set resource name
  const TagRuleArgs({
    required this.monitorName,
    this.properties,
    required this.resourceGroupName,
    this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MonitoringTagRulesProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'ruleSetName': ?ruleSetName,
    };
  }

  factory TagRuleArgs.fromMap(Map<String, dynamic> map) {
    return TagRuleArgs(
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringTagRulesProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleSetName: (() { final guardedValue = map['ruleSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

