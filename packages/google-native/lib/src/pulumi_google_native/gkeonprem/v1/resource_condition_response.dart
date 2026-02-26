// ignore_for_file: unused_element, unnecessary_cast

/// ResourceCondition provides a standard mechanism for higher-level status reporting from controller.
class ResourceConditionResponse {
  /// Last time the condition transit from one status to another.
  final String lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  final String message;

  /// Machine-readable message indicating details about last transition.
  final String reason;

  /// state of the condition.
  final String state;

  /// Type of the condition. (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady)
  final String type;

  ResourceConditionResponse({
    required this.lastTransitionTime,
    required this.message,
    required this.reason,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastTransitionTime'] = lastTransitionTime;
    map['message'] = message;
    map['reason'] = reason;
    map['state'] = state;
    map['type'] = type;
    return map;
  }

  factory ResourceConditionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceConditionResponse(
      lastTransitionTime: map['lastTransitionTime'] as String,
      message: map['message'] as String,
      reason: map['reason'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
