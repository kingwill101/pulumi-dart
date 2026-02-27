// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contentwarehouse_v1_action.dart';
import 'google_cloud_contentwarehouse_v1_rule_trigger_type.dart';

/// Represents the rule for a content warehouse trigger.
class GoogleCloudContentwarehouseV1Rule {
  /// List of actions that are executed when the rule is satisfied.
  final List<GoogleCloudContentwarehouseV1Action>? actions;

  /// Represents the conditional expression to be evaluated. Expression should evaluate to a boolean result. When the condition is true actions are executed. Example: user_role = "hsbc_role_1" AND doc.salary > 20000
  final String? condition;

  /// Short description of the rule and its context.
  final String? description;

  /// ID of the rule. It has to be unique across all the examples. This is managed internally.
  final String? ruleId;

  /// Identifies the trigger type for running the policy.
  final GoogleCloudContentwarehouseV1RuleTriggerType? triggerType;

  GoogleCloudContentwarehouseV1Rule({
    this.actions,
    this.condition,
    this.description,
    this.ruleId,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = Input.encodeList<GoogleCloudContentwarehouseV1Action,
          Map<String, dynamic>>(actionsValue, (value) => value.toMap());
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ruleIdValue = ruleId;
    if (ruleIdValue != null) {
      map['ruleId'] = ruleIdValue;
    }
    final triggerTypeValue = triggerType;
    if (triggerTypeValue != null) {
      map['triggerType'] = triggerTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1Rule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1Rule(
      actions: map['actions'] == null
          ? null
          : Input.decodeList<GoogleCloudContentwarehouseV1Action>(
              map['actions'],
              (value) => GoogleCloudContentwarehouseV1Action.fromMap(
                  (value as Map).cast<String, dynamic>())),
      condition: map['condition'] == null ? null : map['condition'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as String,
      triggerType: map['triggerType'] == null
          ? null
          : GoogleCloudContentwarehouseV1RuleTriggerType.fromValue(
              map['triggerType'] as String),
    );
  }
}
