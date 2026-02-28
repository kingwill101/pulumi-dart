// ignore_for_file: unused_element, unnecessary_cast

class DomainMappingStatusCondition {
  /// (Output)
  /// Human readable message indicating details about the current status.
  final String? message;

  /// (Output)
  /// One-word CamelCase reason for the condition's current status.
  final String? reason;

  /// (Output)
  /// Status of the condition, one of True, False, Unknown.
  final String? status;

  /// Resource record type. Example: `AAAA`.
  /// Possible values are: `A`, `AAAA`, `CNAME`.
  final String? type;

  /// Creates a new [DomainMappingStatusCondition].
  /// [message] (Output)
  /// [reason] (Output)
  /// [status] (Output)
  /// [type] Resource record type. Example: `AAAA`.
  DomainMappingStatusCondition({
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory DomainMappingStatusCondition.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatusCondition(
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
