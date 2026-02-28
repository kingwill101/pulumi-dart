// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id_response.dart';

/// Compute numerical stats over an individual column, including min, max, and quantiles.
class GooglePrivacyDlpV2NumericalStatsConfigResponse {
  /// Field to compute numerical stats on. Supported types are integer, float, date, datetime, timestamp, time.
  final GooglePrivacyDlpV2FieldIdResponse field;

  /// Creates a new [GooglePrivacyDlpV2NumericalStatsConfigResponse].
  /// [field] Field to compute numerical stats on. Supported types are integer, float, date, datetime, timestamp, time.
  GooglePrivacyDlpV2NumericalStatsConfigResponse({
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field.toMap(),
    };
  }

  factory GooglePrivacyDlpV2NumericalStatsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2NumericalStatsConfigResponse(
      field: GooglePrivacyDlpV2FieldIdResponse.fromMap((map['field'] as Map).cast<String, dynamic>()),
    );
  }
}

