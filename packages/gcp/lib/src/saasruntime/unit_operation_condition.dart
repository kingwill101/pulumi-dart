// ignore_for_file: unused_element, unnecessary_cast

class UnitOperationCondition {
  /// (Output)
  /// Last time the condition transited from one status to another.
  final String? lastTransitionTime;

  /// (Output)
  /// Human readable message indicating details about the last transition.
  final String? message;

  /// (Output)
  /// Brief reason for the condition's last transition.
  final String? reason;

  /// (Output)
  /// Status of the condition.
  /// Possible values:
  /// STATUS_UNKNOWN
  /// STATUS_TRUE
  /// STATUS_FALSE
  final String? status;

  /// (Output)
  /// Type of the condition.
  /// Possible values:
  /// TYPE_SCHEDULED
  /// TYPE_RUNNING
  /// TYPE_SUCCEEDED
  /// TYPE_CANCELLED
  final String? type;

  /// Creates a new [UnitOperationCondition].
  /// [lastTransitionTime] (Output)
  /// [message] (Output)
  /// [reason] (Output)
  /// [status] (Output)
  /// [type] (Output)
  UnitOperationCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
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

  factory UnitOperationCondition.fromMap(Map<String, dynamic> map) {
    return UnitOperationCondition(
      lastTransitionTime: map['lastTransitionTime'] == null
          ? null
          : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
