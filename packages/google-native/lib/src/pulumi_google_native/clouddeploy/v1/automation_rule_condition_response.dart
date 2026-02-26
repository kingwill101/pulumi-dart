// ignore_for_file: unused_element, unnecessary_cast

import 'targets_present_condition_response.dart';

/// `AutomationRuleCondition` contains conditions relevant to an `Automation` rule.
class AutomationRuleConditionResponse {
  /// Optional. Details around targets enumerated in the rule.
  final TargetsPresentConditionResponse targetsPresentCondition;

  AutomationRuleConditionResponse({
    required this.targetsPresentCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetsPresentCondition'] = targetsPresentCondition.toMap();
    return map;
  }

  factory AutomationRuleConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleConditionResponse(
      targetsPresentCondition: TargetsPresentConditionResponse.fromMap(
          (map['targetsPresentCondition'] as Map).cast<String, dynamic>()),
    );
  }
}
