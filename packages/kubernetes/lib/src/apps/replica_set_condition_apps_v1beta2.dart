// ignore_for_file: unused_element, unnecessary_cast


/// ReplicaSetCondition describes the state of a replica set at a certain point.
class ReplicaSetConditionAppsV1beta2 {
  /// The last time the condition transitioned from one status to another.
  final String? lastTransitionTime;
  /// A human readable message indicating details about the transition.
  final String? message;
  /// The reason for the condition's last transition.
  final String? reason;
  /// Status of the condition, one of True, False, Unknown.
  final String status;
  /// Type of replica set condition.
  final String type;

  /// Creates a new [ReplicaSetConditionAppsV1beta2].
  /// [lastTransitionTime] The last time the condition transitioned from one status to another.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of replica set condition.
  ReplicaSetConditionAppsV1beta2({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory ReplicaSetConditionAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return ReplicaSetConditionAppsV1beta2(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

