// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_get_action_rule_by_name_args_doc}
/// Arguments for getActionRuleByName.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_get_action_rule_by_name_args_doc}
class GetActionRuleByNameArgs {
  /// The name of action rule that needs to be fetched
  final pulumi.Input<String> actionRuleName;
  /// Resource group name where the resource is created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetActionRuleByNameArgs].
  /// [actionRuleName] The name of action rule that needs to be fetched
  /// [resourceGroupName] Resource group name where the resource is created.
  GetActionRuleByNameArgs({
    required this.actionRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRuleName': actionRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetActionRuleByNameArgs.fromMap(Map<String, dynamic> map) {
    return GetActionRuleByNameArgs(
      actionRuleName: (map['actionRuleName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

