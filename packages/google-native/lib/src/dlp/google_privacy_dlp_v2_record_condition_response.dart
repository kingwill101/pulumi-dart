// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_expressions_response.dart';

/// A condition for determining whether a transformation should be applied to a field.
class GooglePrivacyDlpV2RecordConditionResponse {
  /// An expression.
  final GooglePrivacyDlpV2ExpressionsResponse expressions;

  /// Creates a new [GooglePrivacyDlpV2RecordConditionResponse].
  /// [expressions] An expression.
  GooglePrivacyDlpV2RecordConditionResponse({required this.expressions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expressions': expressions.toMap()};
  }

  factory GooglePrivacyDlpV2RecordConditionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2RecordConditionResponse(
      expressions: GooglePrivacyDlpV2ExpressionsResponse.fromMap(
        (map['expressions'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
