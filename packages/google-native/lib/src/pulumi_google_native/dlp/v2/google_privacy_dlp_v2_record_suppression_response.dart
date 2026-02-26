// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_record_condition_response.dart';

/// Configuration to suppress records whose suppression conditions evaluate to true.
class GooglePrivacyDlpV2RecordSuppressionResponse {
  /// A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
  final GooglePrivacyDlpV2RecordConditionResponse condition;

  GooglePrivacyDlpV2RecordSuppressionResponse({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2RecordSuppressionResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordSuppressionResponse(
      condition: GooglePrivacyDlpV2RecordConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
    );
  }
}
