// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_automation_rule_args_doc}
/// Arguments for getAutomationRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_automation_rule_args_doc}
class GetAutomationRuleArgs {
  /// Automation rule ID
  final pulumi.Input<String> automationRuleId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetAutomationRuleArgs].
  /// [automationRuleId] Automation rule ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetAutomationRuleArgs({
    required String automationRuleId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      automationRuleId = pulumi.Input.asInput<String>(automationRuleId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationRuleId': automationRuleId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetAutomationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationRuleArgs(
      automationRuleId: map['automationRuleId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

