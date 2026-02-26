// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id.dart';

/// Compute numerical stats over an individual column, including min, max, and quantiles.
class GooglePrivacyDlpV2NumericalStatsConfig {
  /// Field to compute numerical stats on. Supported types are integer, float, date, datetime, timestamp, time.
  final GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2NumericalStatsConfig({
    this.field,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2NumericalStatsConfig.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2NumericalStatsConfig(
      field: map['field'] == null
          ? null
          : GooglePrivacyDlpV2FieldId.fromMap(
              (map['field'] as Map).cast<String, dynamic>()),
    );
  }
}
