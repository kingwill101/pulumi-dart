// ignore_for_file: unused_element, unnecessary_cast


class BareMetalAdminClusterStatusCondition {
  /// (Output)
  /// Last time the condition transit from one status to another.
  final String? lastTransitionTime;
  /// Human-readable message indicating details about last transition.
  final String? message;
  /// (Output)
  /// A human-readable message of the check failure.
  final String? reason;
  /// (Output)
  /// The lifecycle state of the condition.
  final String? state;
  /// Type of the condition.
  /// (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady)
  final String? type;

  /// Creates a new [BareMetalAdminClusterStatusCondition].
  /// [lastTransitionTime] (Output)
  /// [message] Human-readable message indicating details about last transition.
  /// [reason] (Output)
  /// [state] (Output)
  /// [type] Type of the condition.
  BareMetalAdminClusterStatusCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'state': ?state,
      'type': ?type,
    };
  }

  factory BareMetalAdminClusterStatusCondition.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterStatusCondition(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

