// ignore_for_file: unused_element, unnecessary_cast

import 'action_condition_response.dart';

/// LifecyclePolicy describes how to deal with task failures based on different conditions.
class LifecyclePolicyResponse {
  /// Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry failed tasks if we notice any exit code match and fail tasks if no match is found. Likewise, when FAIL_TASK is specified, we will fail tasks if we notice any exit code match and retry tasks if no match is found.
  final String action;

  /// Conditions that decide why a task failure is dealt with a specific action.
  final ActionConditionResponse actionCondition;

  /// Creates a new [LifecyclePolicyResponse].
  /// [action] Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry failed tasks if we notice any exit code match and fail tasks if no match is found. Likewise, when FAIL_TASK is specified, we will fail tasks if we notice any exit code match and retry tasks if no match is found.
  /// [actionCondition] Conditions that decide why a task failure is dealt with a specific action.
  LifecyclePolicyResponse({
    required this.action,
    required this.actionCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'actionCondition': actionCondition.toMap(),
    };
  }

  factory LifecyclePolicyResponse.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyResponse(
      action: map['action'] as String,
      actionCondition: ActionConditionResponse.fromMap(
        (map['actionCondition'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
