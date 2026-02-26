// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_condition_response.dart';

/// The `AdvanceRollout` automation rule will automatically advance a successful Rollout to the next phase.
class AdvanceRolloutRuleResponse {
  /// Information around the state of the Automation rule.
  final AutomationRuleConditionResponse condition;

  /// Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final List<String> sourcePhases;

  /// Optional. How long to wait after a rollout is finished.
  final String wait;

  AdvanceRolloutRuleResponse({
    required this.condition,
    required this.sourcePhases,
    required this.wait,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition.toMap();
    map['sourcePhases'] = sourcePhases;
    map['wait'] = wait;
    return map;
  }

  factory AdvanceRolloutRuleResponse.fromMap(Map<String, dynamic> map) {
    return AdvanceRolloutRuleResponse(
      condition: AutomationRuleConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      sourcePhases: (map['sourcePhases'] as List).cast<String>(),
      wait: map['wait'] as String,
    );
  }
}
