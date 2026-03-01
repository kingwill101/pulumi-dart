// ignore_for_file: unused_element, unnecessary_cast

class GetServiceCondition {
  /// A reason for the execution condition.
  final String executionReason;

  /// Last time the condition transitioned from one status to another.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String lastTransitionTime;

  /// Human readable message indicating details about the current status.
  final String message;

  /// A common (service-level) reason for this condition.
  final String reason;

  /// A reason for the revision condition.
  final String revisionReason;

  /// How to interpret failures of this condition, one of Error, Warning, Info
  final String severity;

  /// State of the condition.
  final String state;

  /// type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * "Ready": True when the Resource is ready.
  final String type;

  /// Creates a new [GetServiceCondition].
  /// [executionReason] A reason for the execution condition.
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human readable message indicating details about the current status.
  /// [reason] A common (service-level) reason for this condition.
  /// [revisionReason] A reason for the revision condition.
  /// [severity] How to interpret failures of this condition, one of Error, Warning, Info
  /// [state] State of the condition.
  /// [type] type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * "Ready": True when the Resource is ready.
  GetServiceCondition({
    required this.executionReason,
    required this.lastTransitionTime,
    required this.message,
    required this.reason,
    required this.revisionReason,
    required this.severity,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionReason': executionReason,
      'lastTransitionTime': lastTransitionTime,
      'message': message,
      'reason': reason,
      'revisionReason': revisionReason,
      'severity': severity,
      'state': state,
      'type': type,
    };
  }

  factory GetServiceCondition.fromMap(Map<String, dynamic> map) {
    return GetServiceCondition(
      executionReason: map['executionReason'] as String,
      lastTransitionTime: map['lastTransitionTime'] as String,
      message: map['message'] as String,
      reason: map['reason'] as String,
      revisionReason: map['revisionReason'] as String,
      severity: map['severity'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
