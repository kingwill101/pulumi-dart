// ignore_for_file: unused_element, unnecessary_cast

import 'status_condition_canonical_code2.dart';
import 'status_condition_code2.dart';

/// StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
class StatusCondition2 {
  /// Canonical code of the condition.
  final StatusConditionCanonicalCode2? canonicalCode;

  /// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  final StatusConditionCode2? code;

  /// Human-friendly representation of the condition
  final String? message;

  StatusCondition2({
    this.canonicalCode,
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canonicalCodeValue = canonicalCode;
    if (canonicalCodeValue != null) {
      map['canonicalCode'] = canonicalCodeValue.value;
    }
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue.value;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory StatusCondition2.fromMap(Map<String, dynamic> map) {
    return StatusCondition2(
      canonicalCode: map['canonicalCode'] == null
          ? null
          : StatusConditionCanonicalCode2.fromValue(
              map['canonicalCode'] as String),
      code: map['code'] == null
          ? null
          : StatusConditionCode2.fromValue(map['code'] as String),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
