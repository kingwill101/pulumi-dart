// ignore_for_file: unused_element, unnecessary_cast

import 'status_condition_canonical_code_container_v1beta1.dart';
import 'status_condition_code_container_v1beta1.dart';

/// StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
class StatusConditionContainerV1beta1 {
  /// Canonical code of the condition.
  final StatusConditionCanonicalCodeContainerV1beta1? canonicalCode;

  /// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  final StatusConditionCodeContainerV1beta1? code;

  /// Human-friendly representation of the condition
  final String? message;

  /// Creates a new [StatusConditionContainerV1beta1].
  /// [canonicalCode] Canonical code of the condition.
  /// [code] Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  /// [message] Human-friendly representation of the condition
  StatusConditionContainerV1beta1({
    this.canonicalCode,
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalCode': ?canonicalCode == null ? null : canonicalCode!.value,
      'code': ?code == null ? null : code!.value,
      'message': ?message,
    };
  }

  factory StatusConditionContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return StatusConditionContainerV1beta1(
      canonicalCode: map['canonicalCode'] == null
          ? null
          : StatusConditionCanonicalCodeContainerV1beta1.fromValue(
              map['canonicalCode'] as String,
            ),
      code: map['code'] == null
          ? null
          : StatusConditionCodeContainerV1beta1.fromValue(
              map['code'] as String,
            ),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
