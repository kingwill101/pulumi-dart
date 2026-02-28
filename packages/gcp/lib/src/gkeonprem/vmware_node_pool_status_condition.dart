// ignore_for_file: unused_element, unnecessary_cast

class VMwareNodePoolStatusCondition {
  /// (Output)
  /// Last time the condition transit from one status to another.
  final String? lastTransitionTime;

  /// (Output)
  /// Human-readable message indicating details about last transition.
  final String? message;

  /// (Output)
  /// Machine-readable message indicating details about last transition.
  final String? reason;

  /// (Output)
  /// The lifecycle state of the condition.
  final String? state;

  /// (Output)
  /// Type of the condition.
  /// (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady)
  final String? type;

  /// Creates a new [VMwareNodePoolStatusCondition].
  /// [lastTransitionTime] (Output)
  /// [message] (Output)
  /// [reason] (Output)
  /// [state] (Output)
  /// [type] (Output)
  VMwareNodePoolStatusCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.state,
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

  factory VMwareNodePoolStatusCondition.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolStatusCondition(
      lastTransitionTime: map['lastTransitionTime'] == null
          ? null
          : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
