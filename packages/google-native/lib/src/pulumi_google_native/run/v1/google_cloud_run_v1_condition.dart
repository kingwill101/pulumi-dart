// ignore_for_file: unused_element, unnecessary_cast

/// Conditions show the status of reconciliation progress on a given resource. Most resource use a top-level condition type "Ready" or "Completed" to show overall status with other conditions to checkpoint each stage of reconciliation. Note that if metadata.Generation does not equal status.ObservedGeneration, the conditions shown may not be relevant for the current spec.
class GoogleCloudRunV1Condition {
  /// Optional. Last time the condition transitioned from one status to another.
  final String? lastTransitionTime;

  /// Optional. Human readable message indicating details about the current status.
  final String? message;

  /// Optional. One-word CamelCase reason for the condition's last transition. These are intended to be stable, unique values which the client may use to trigger error handling logic, whereas messages which may be changed later by the server.
  final String? reason;

  /// Optional. How to interpret this condition. One of Error, Warning, or Info. Conditions of severity Info do not contribute to resource readiness.
  final String? severity;

  /// Status of the condition, one of True, False, Unknown.
  final String? status;

  /// type is used to communicate the status of the reconciliation process. Types common to all resources include: * "Ready" or "Completed": True when the Resource is ready.
  final String? type;

  GoogleCloudRunV1Condition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.severity,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastTransitionTimeValue = lastTransitionTime;
    if (lastTransitionTimeValue != null) {
      map['lastTransitionTime'] = lastTransitionTimeValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GoogleCloudRunV1Condition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV1Condition(
      lastTransitionTime: map['lastTransitionTime'] == null
          ? null
          : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
