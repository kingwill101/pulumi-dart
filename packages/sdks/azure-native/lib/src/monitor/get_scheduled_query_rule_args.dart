// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_scheduled_query_rule_args_doc}
/// Arguments for getScheduledQueryRule.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_scheduled_query_rule_args_doc}
class GetScheduledQueryRuleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetScheduledQueryRuleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The name of the rule.
  GetScheduledQueryRuleArgs({
    required this.resourceGroupName,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
    };
  }

  factory GetScheduledQueryRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRuleArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
    );
  }
}

