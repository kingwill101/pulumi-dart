// ignore_for_file: unused_element, unnecessary_cast


/// FlowSchemaCondition describes conditions for a FlowSchema.
class FlowSchemaConditionPatch {
  /// `lastTransitionTime` is the last time the condition transitioned from one status to another.
  final String? lastTransitionTime;
  /// `message` is a human-readable message indicating details about last transition.
  final String? message;
  /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;
  /// `status` is the status of the condition. Can be True, False, Unknown. Required.
  final String? status;
  /// `type` is the type of the condition. Required.
  final String? type;

  /// Creates a new [FlowSchemaConditionPatch].
  /// [lastTransitionTime] `lastTransitionTime` is the last time the condition transitioned from one status to another.
  /// [message] `message` is a human-readable message indicating details about last transition.
  /// [reason] `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] `status` is the status of the condition. Can be True, False, Unknown. Required.
  /// [type] `type` is the type of the condition. Required.
  FlowSchemaConditionPatch({
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

  factory FlowSchemaConditionPatch.fromMap(Map<String, dynamic> map) {
    return FlowSchemaConditionPatch(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

