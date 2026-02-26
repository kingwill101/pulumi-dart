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

  GetServiceStatusCondition({
    required this.message,
    required this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['reason'] = reason;
    map['status'] = status;
    map['type'] = type;
    return map;
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
