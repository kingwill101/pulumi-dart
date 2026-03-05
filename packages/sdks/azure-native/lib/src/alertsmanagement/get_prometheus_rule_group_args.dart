// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_get_prometheus_rule_group_args_doc}
/// Arguments for getPrometheusRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_get_prometheus_rule_group_args_doc}
class GetPrometheusRuleGroupArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the rule group.
  final pulumi.Input<String> ruleGroupName;

  /// Creates a new [GetPrometheusRuleGroupArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleGroupName] The name of the rule group.
  GetPrometheusRuleGroupArgs({
    required this.resourceGroupName,
    required this.ruleGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleGroupName': ruleGroupName,
    };
  }

  factory GetPrometheusRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPrometheusRuleGroupArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
    );
  }
}

