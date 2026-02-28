// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id_response.dart';

/// Compute numerical stats over an individual column, including number of distinct values and value count distribution.
class GooglePrivacyDlpV2CategoricalStatsConfigResponse {
  /// Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
  final GooglePrivacyDlpV2FieldIdResponse field;

  /// Creates a new [GooglePrivacyDlpV2CategoricalStatsConfigResponse].
  /// [field] Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
  GooglePrivacyDlpV2CategoricalStatsConfigResponse({
    required this.field,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['field'] = field.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2CategoricalStatsConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CategoricalStatsConfigResponse(
      field: GooglePrivacyDlpV2FieldIdResponse.fromMap(
          (map['field'] as Map).cast<String, dynamic>()),
    );
  }
}
