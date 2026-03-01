// ignore_for_file: unused_element, unnecessary_cast


/// Describes the state of a migration at a certain point.
class MigrationConditionPatch {
  /// The last time this condition was updated.
  final String? lastUpdateTime;
  /// A human readable message indicating details about the transition.
  final String? message;
  /// The reason for the condition's last transition.
  final String? reason;
  /// Status of the condition, one of True, False, Unknown.
  final String? status;
  /// Type of the condition.
  final String? type;

  /// Creates a new [MigrationConditionPatch].
  /// [lastUpdateTime] The last time this condition was updated.
  /// [message] A human readable message indicating details about the transition.
  /// [reason] The reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of the condition.
  MigrationConditionPatch({
    this.lastUpdateTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdateTime': ?lastUpdateTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory MigrationConditionPatch.fromMap(Map<String, dynamic> map) {
    return MigrationConditionPatch(
      lastUpdateTime: map['lastUpdateTime'] == null ? null : map['lastUpdateTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

