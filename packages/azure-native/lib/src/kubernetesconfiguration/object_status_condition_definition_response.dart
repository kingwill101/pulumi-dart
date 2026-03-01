// ignore_for_file: unused_element, unnecessary_cast


/// Status condition of Kubernetes object
class ObjectStatusConditionDefinitionResponse {
  /// Last time this status condition has changed
  final String? lastTransitionTime;
  /// A more verbose description of the object status condition
  final String? message;
  /// Reason for the specified status condition type status
  final String? reason;
  /// Status of the Kubernetes object condition type
  final String? status;
  /// Object status condition type for this object
  final String? type;

  /// Creates a new [ObjectStatusConditionDefinitionResponse].
  /// [lastTransitionTime] Last time this status condition has changed
  /// [message] A more verbose description of the object status condition
  /// [reason] Reason for the specified status condition type status
  /// [status] Status of the Kubernetes object condition type
  /// [type] Object status condition type for this object
  ObjectStatusConditionDefinitionResponse({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory ObjectStatusConditionDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ObjectStatusConditionDefinitionResponse(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

