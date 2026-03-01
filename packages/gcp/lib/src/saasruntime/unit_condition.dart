// ignore_for_file: unused_element, unnecessary_cast

class UnitCondition {
  /// Last time the condition transited from one status to another.
  final String lastTransitionTime;

  /// Human readable message indicating details about the last transition.
  final String message;

  /// Brief reason for the condition's last transition.
  final String reason;

  /// Status of the condition.
  /// Possible values:
  /// STATUS_UNKNOWN
  /// STATUS_TRUE
  /// STATUS_FALSE
  final String status;

  /// Name of a supported variable type. Supported types are string, int, bool.
  /// Possible values:
  /// STRING
  /// INT
  /// BOOL
  final String type;

  /// Creates a new [UnitCondition].
  /// [lastTransitionTime] Last time the condition transited from one status to another.
  /// [message] Human readable message indicating details about the last transition.
  /// [reason] Brief reason for the condition's last transition.
  /// [status] Status of the condition.
  /// [type] Name of a supported variable type. Supported types are string, int, bool.
  UnitCondition({
    required this.lastTransitionTime,
    required this.message,
    required this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': lastTransitionTime,
      'message': message,
      'reason': reason,
      'status': status,
      'type': type,
    };
  }

  factory UnitCondition.fromMap(Map<String, dynamic> map) {
    return UnitCondition(
      lastTransitionTime: map['lastTransitionTime'] as String,
      message: map['message'] as String,
      reason: map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}
