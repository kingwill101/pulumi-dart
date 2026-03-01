// ignore_for_file: unused_element, unnecessary_cast

class GetServiceStatusCondition {
  /// Human readable message indicating details about the current status.
  final String message;

  /// One-word CamelCase reason for the condition's current status.
  final String reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of domain mapping condition.
  final String type;

  /// Creates a new [GetServiceStatusCondition].
  /// [message] Human readable message indicating details about the current status.
  /// [reason] One-word CamelCase reason for the condition's current status.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of domain mapping condition.
  GetServiceStatusCondition({
    required this.message,
    required this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'reason': reason,
      'status': status,
      'type': type,
    };
  }

  factory GetServiceStatusCondition.fromMap(Map<String, dynamic> map) {
    return GetServiceStatusCondition(
      message: map['message'] as String,
      reason: map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}
