// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_conditions.dart';
import 'google_privacy_dlp_v2_expressions_logical_operator.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2Expressions {
  /// Conditions to apply to the expression.
  final GooglePrivacyDlpV2Conditions? conditions;

  /// The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
  final GooglePrivacyDlpV2ExpressionsLogicalOperator? logicalOperator;

  /// Creates a new [GooglePrivacyDlpV2Expressions].
  /// [conditions] Conditions to apply to the expression.
  /// [logicalOperator] The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
  GooglePrivacyDlpV2Expressions({this.conditions, this.logicalOperator});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : conditions!.toMap(),
      'logicalOperator': ?logicalOperator == null
          ? null
          : logicalOperator!.value,
    };
  }

  factory GooglePrivacyDlpV2Expressions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Expressions(
      conditions: map['conditions'] == null
          ? null
          : GooglePrivacyDlpV2Conditions.fromMap(
              (map['conditions'] as Map).cast<String, dynamic>(),
            ),
      logicalOperator: map['logicalOperator'] == null
          ? null
          : GooglePrivacyDlpV2ExpressionsLogicalOperator.fromValue(
              map['logicalOperator'] as String,
            ),
    );
  }
}
