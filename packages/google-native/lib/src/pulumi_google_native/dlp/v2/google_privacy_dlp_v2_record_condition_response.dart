// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_expressions_response.dart';

/// A condition for determining whether a transformation should be applied to a field.
class GooglePrivacyDlpV2RecordConditionResponse {
  /// An expression.
  final GooglePrivacyDlpV2ExpressionsResponse expressions;

  GooglePrivacyDlpV2RecordConditionResponse({
    required this.expressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressions'] = expressions.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2RecordConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordConditionResponse(
      expressions: GooglePrivacyDlpV2ExpressionsResponse.fromMap(
          (map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}
