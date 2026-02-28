// ignore_for_file: unused_element, unnecessary_cast

class ServiceCondition {
  /// (Output)
  /// A reason for the execution condition.
  final String? executionReason;

  /// (Output)
  /// Last time the condition transitioned from one status to another.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? lastTransitionTime;

  /// (Output)
  /// Human readable message indicating details about the current status.
  final String? message;

  /// (Output)
  /// A common (service-level) reason for this condition.
  final String? reason;

  /// (Output)
  /// A reason for the revision condition.
  final String? revisionReason;

  /// (Output)
  /// How to interpret failures of this condition, one of Error, Warning, Info
  final String? severity;

  /// (Output)
  /// State of the condition.
  final String? state;

  /// (Output)
  /// The allocation type for this traffic target.
  final String? type;

  /// Creates a new [ServiceCondition].
  /// [executionReason] (Output)
  /// [lastTransitionTime] (Output)
  /// [message] (Output)
  /// [reason] (Output)
  /// [revisionReason] (Output)
  /// [severity] (Output)
  /// [state] (Output)
  /// [type] (Output)
  ServiceCondition({
    this.executionReason,
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.revisionReason,
    this.severity,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executionReasonValue = executionReason;
    if (executionReasonValue != null) {
      map['executionReason'] = executionReasonValue;
    }
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
    final revisionReasonValue = revisionReason;
    if (revisionReasonValue != null) {
      map['revisionReason'] = revisionReasonValue;
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServiceCondition.fromMap(Map<String, dynamic> map) {
    return ServiceCondition(
      executionReason: map['executionReason'] == null
          ? null
          : map['executionReason'] as String,
      lastTransitionTime: map['lastTransitionTime'] == null
          ? null
          : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      revisionReason: map['revisionReason'] == null
          ? null
          : map['revisionReason'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
