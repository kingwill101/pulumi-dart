// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_list.dart';
import 'alert_rule_all_of_condition.dart';

/// {@template pulumi_monitor_activity_log_alert_args_doc}
/// The set of arguments for ActivityLogAlert.
/// {@endtemplate}
/// {@macro pulumi_monitor_activity_log_alert_args_doc}
class ActivityLogAlertArgs {
  /// The actions that will activate when the condition is met.
  final pulumi.Input<ActionList> actions;
  /// The name of the Activity Log Alert rule.
  final pulumi.Input<String>? activityLogAlertName;
  /// The condition that will cause this alert to activate.
  final pulumi.Input<AlertRuleAllOfCondition> condition;
  /// A description of this Activity Log Alert rule.
  final pulumi.Input<String>? description;
  /// Indicates whether this Activity Log Alert rule is enabled. If an Activity Log Alert rule is not enabled, then none of its actions will be activated.
  final pulumi.Input<bool>? enabled;
  /// The location of the resource. Azure Activity Log Alert rules are supported on Global, West Europe and North Europe regions.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// A list of resource IDs that will be used as prefixes. The alert will only apply to Activity Log events with resource IDs that fall under one of these prefixes. This list must include at least one item.
  final pulumi.Input<List<String>> scopes;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ActivityLogAlertArgs].
  /// [actions] The actions that will activate when the condition is met.
  /// [activityLogAlertName] The name of the Activity Log Alert rule.
  /// [condition] The condition that will cause this alert to activate.
  /// [description] A description of this Activity Log Alert rule.
  /// [enabled] Indicates whether this Activity Log Alert rule is enabled. If an Activity Log Alert rule is not enabled, then none of its actions will be activated.
  /// [location] The location of the resource. Azure Activity Log Alert rules are supported on Global, West Europe and North Europe regions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopes] A list of resource IDs that will be used as prefixes. The alert will only apply to Activity Log events with resource IDs that fall under one of these prefixes. This list must include at least one item.
  /// [tags] The tags of the resource.
  ActivityLogAlertArgs({
    required this.actions,
    this.activityLogAlertName,
    required this.condition,
    this.description,
    this.enabled,
    this.location,
    required this.resourceGroupName,
    required this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<ActionList, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'activityLogAlertName': ?activityLogAlertName,
      'condition': pulumi.Input.mapInputValue<AlertRuleAllOfCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'scopes': scopes,
      'tags': ?tags,
    };
  }

  factory ActivityLogAlertArgs.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertArgs(
      actions: (ActionList.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      activityLogAlertName: map['activityLogAlertName'] == null ? null : (map['activityLogAlertName']! as String).input(),
      condition: (AlertRuleAllOfCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopes: ((map['scopes'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

