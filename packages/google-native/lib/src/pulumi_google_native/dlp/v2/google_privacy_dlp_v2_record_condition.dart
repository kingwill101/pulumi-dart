// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_expressions.dart';

/// A condition for determining whether a transformation should be applied to a field.
class GooglePrivacyDlpV2RecordCondition {
  /// An expression.
  final GooglePrivacyDlpV2Expressions? expressions;

  GooglePrivacyDlpV2RecordCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionsValue = expressions;
    if (expressionsValue != null) {
      map['expressions'] = expressionsValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2RecordCondition.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordCondition(
      expressions: map['expressions'] == null
          ? null
          : GooglePrivacyDlpV2Expressions.fromMap(
              (map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}
