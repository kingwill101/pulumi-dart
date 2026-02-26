// ignore_for_file: unused_element, unnecessary_cast

/// StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
class StatusConditionResponse2 {
  /// Canonical code of the condition.
  final String canonicalCode;

  /// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  final String code;

  /// Human-friendly representation of the condition
  final String message;

  StatusConditionResponse2({
    required this.canonicalCode,
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalCode'] = canonicalCode;
    map['code'] = code;
    map['message'] = message;
    return map;
  }

  factory StatusConditionResponse2.fromMap(Map<String, dynamic> map) {
    return StatusConditionResponse2(
      canonicalCode: map['canonicalCode'] as String,
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}
