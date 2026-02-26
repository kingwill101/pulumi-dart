// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_conditions_response.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2ExpressionsResponse {
  /// Conditions to apply to the expression.
  final GooglePrivacyDlpV2ConditionsResponse conditions;

  /// The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
  final String logicalOperator;

  GooglePrivacyDlpV2ExpressionsResponse({
    required this.conditions,
    required this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = conditions.toMap();
    map['logicalOperator'] = logicalOperator;
    return map;
  }

  factory GooglePrivacyDlpV2ExpressionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExpressionsResponse(
      conditions: GooglePrivacyDlpV2ConditionsResponse.fromMap(
          (map['conditions'] as Map).cast<String, dynamic>()),
      logicalOperator: map['logicalOperator'] as String,
    );
  }
}
