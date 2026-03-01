// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_record_condition.dart';

/// Configuration to suppress records whose suppression conditions evaluate to true.
class GooglePrivacyDlpV2RecordSuppression {
  /// A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
  final GooglePrivacyDlpV2RecordCondition? condition;

  /// Creates a new [GooglePrivacyDlpV2RecordSuppression].
  /// [condition] A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
  GooglePrivacyDlpV2RecordSuppression({this.condition});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2RecordSuppression.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2RecordSuppression(
      condition: map['condition'] == null
          ? null
          : GooglePrivacyDlpV2RecordCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
