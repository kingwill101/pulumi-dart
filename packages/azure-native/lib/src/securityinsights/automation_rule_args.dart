// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_add_incident_task_action.dart';
import 'automation_rule_triggering_logic.dart';

/// {@template pulumi_securityinsights_automation_rule_args_doc}
/// The set of arguments for AutomationRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_automation_rule_args_doc}
class AutomationRuleArgs {
  /// The actions to execute when the automation rule is triggered.
  final pulumi.Input<List<AutomationRuleAddIncidentTaskAction>> actions;
  /// Automation rule ID
  final pulumi.Input<String>? automationRuleId;
  /// The display name of the automation rule.
  final pulumi.Input<String> displayName;
  /// The order of execution of the automation rule.
  final pulumi.Input<int> order;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Describes automation rule triggering logic.
  final pulumi.Input<AutomationRuleTriggeringLogic> triggeringLogic;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [AutomationRuleArgs].
  /// [actions] The actions to execute when the automation rule is triggered.
  /// [automationRuleId] Automation rule ID
  /// [displayName] The display name of the automation rule.
  /// [order] The order of execution of the automation rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [triggeringLogic] Describes automation rule triggering logic.
  /// [workspaceName] The name of the workspace.
  AutomationRuleArgs({
    required List<AutomationRuleAddIncidentTaskAction> actions,
    String? automationRuleId,
    required String displayName,
    required int order,
    required String resourceGroupName,
    required AutomationRuleTriggeringLogic triggeringLogic,
    required String workspaceName,
  }) :
      actions = pulumi.Input.asInput<List<AutomationRuleAddIncidentTaskAction>>(actions),
      automationRuleId = pulumi.Input.asOptionalInput<String>(automationRuleId),
      displayName = pulumi.Input.asInput<String>(displayName),
      order = pulumi.Input.asInput<int>(order),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggeringLogic = pulumi.Input.asInput<AutomationRuleTriggeringLogic>(triggeringLogic),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<AutomationRuleAddIncidentTaskAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AutomationRuleAddIncidentTaskAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'automationRuleId': ?automationRuleId,
      'displayName': displayName,
      'order': order,
      'resourceGroupName': resourceGroupName,
      'triggeringLogic': pulumi.Input.mapInputValue<AutomationRuleTriggeringLogic, Map<String, dynamic>>(triggeringLogic, (value) => value.toMap()),
      'workspaceName': workspaceName,
    };
  }

  factory AutomationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AutomationRuleArgs(
      actions: pulumi.Input.decodeList<AutomationRuleAddIncidentTaskAction>(map['actions'], (value) => AutomationRuleAddIncidentTaskAction.fromMap((value as Map).cast<String, dynamic>())),
      automationRuleId: map['automationRuleId'] == null ? null : map['automationRuleId'] as String,
      displayName: map['displayName'] as String,
      order: map['order'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      triggeringLogic: AutomationRuleTriggeringLogic.fromMap((map['triggeringLogic'] as Map).cast<String, dynamic>()),
      workspaceName: map['workspaceName'] as String,
    );
  }
}

