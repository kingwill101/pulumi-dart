// ignore_for_file: unused_element, unnecessary_cast

import 'auto_heal_custom_action_response.dart';

/// Actions which to take by the auto-heal module when a rule is triggered.
class AutoHealActionsResponse {
  /// Predefined action to be taken.
  final String? actionType;
  /// Custom action to be taken.
  final AutoHealCustomActionResponse? customAction;
  /// Minimum time the process must execute
  /// before taking the action
  final String? minProcessExecutionTime;

  /// Creates a new [AutoHealActionsResponse].
  /// [actionType] Predefined action to be taken.
  /// [customAction] Custom action to be taken.
  /// [minProcessExecutionTime] Minimum time the process must execute
  AutoHealActionsResponse({
    this.actionType,
    this.customAction,
    this.minProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'customAction': ?customAction == null ? null : customAction!.toMap(),
      'minProcessExecutionTime': ?minProcessExecutionTime,
    };
  }

  factory AutoHealActionsResponse.fromMap(Map<String, dynamic> map) {
    return AutoHealActionsResponse(
      actionType: map['actionType'] == null ? null : map['actionType'] as String,
      customAction: map['customAction'] == null ? null : AutoHealCustomActionResponse.fromMap((map['customAction'] as Map).cast<String, dynamic>()),
      minProcessExecutionTime: map['minProcessExecutionTime'] == null ? null : map['minProcessExecutionTime'] as String,
    );
  }
}

