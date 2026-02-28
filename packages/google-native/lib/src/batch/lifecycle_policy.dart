// ignore_for_file: unused_element, unnecessary_cast

import 'action_condition.dart';
import 'lifecycle_policy_action.dart';

/// LifecyclePolicy describes how to deal with task failures based on different conditions.
class LifecyclePolicy {
  /// Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry failed tasks if we notice any exit code match and fail tasks if no match is found. Likewise, when FAIL_TASK is specified, we will fail tasks if we notice any exit code match and retry tasks if no match is found.
  final LifecyclePolicyAction? action;

  /// Conditions that decide why a task failure is dealt with a specific action.
  final ActionCondition? actionCondition;

  /// Creates a new [LifecyclePolicy].
  /// [action] Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry failed tasks if we notice any exit code match and fail tasks if no match is found. Likewise, when FAIL_TASK is specified, we will fail tasks if we notice any exit code match and retry tasks if no match is found.
  /// [actionCondition] Conditions that decide why a task failure is dealt with a specific action.
  LifecyclePolicy({
    this.action,
    this.actionCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.value;
    }
    final actionConditionValue = actionCondition;
    if (actionConditionValue != null) {
      map['actionCondition'] = actionConditionValue.toMap();
    }
    return map;
  }

  factory LifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicy(
      action: map['action'] == null
          ? null
          : LifecyclePolicyAction.fromValue(map['action'] as String),
      actionCondition: map['actionCondition'] == null
          ? null
          : ActionCondition.fromMap(
              (map['actionCondition'] as Map).cast<String, dynamic>()),
    );
  }
}
