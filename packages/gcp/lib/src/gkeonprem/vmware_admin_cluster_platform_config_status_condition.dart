// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterPlatformConfigStatusCondition {
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

  /// Creates a new [VmwareAdminClusterPlatformConfigStatusCondition].
  /// [lastTransitionTime] (Output)
  /// [message] (Output)
  /// [reason] (Output)
  /// [state] (Output)
  /// [type] (Output)
  VmwareAdminClusterPlatformConfigStatusCondition({
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

  factory VmwareAdminClusterPlatformConfigStatusCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareAdminClusterPlatformConfigStatusCondition(
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
