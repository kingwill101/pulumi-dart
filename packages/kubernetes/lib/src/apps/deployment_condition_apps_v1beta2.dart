// ignore_for_file: unused_element, unnecessary_cast


/// DeploymentCondition describes the state of a deployment at a certain point.
class DeploymentConditionAppsV1beta2 {
  /// Last time the condition transitioned from one status to another.
  final String? lastTransitionTime;
  /// The last time this condition was updated.
  final String? lastUpdateTime;
  /// A human readable message indicating details about the transition.
  final String? message;
  /// The reason for the condition's last transition.
  final String? reason;
  /// Status of the condition, one of True, False, Unknown.
  final String status;
  /// Type of deployment condition.
  final String type;

  /// Creates a new [DeploymentConditionAppsV1beta2].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [lastUpdateTime] The last time this condition was updated.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of deployment condition.
  DeploymentConditionAppsV1beta2({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'lastUpdateTime': ?lastUpdateTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory DeploymentConditionAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DeploymentConditionAppsV1beta2(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      lastUpdateTime: map['lastUpdateTime'] == null ? null : map['lastUpdateTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

