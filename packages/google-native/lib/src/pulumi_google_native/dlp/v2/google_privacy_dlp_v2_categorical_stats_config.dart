// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id.dart';

/// Compute numerical stats over an individual column, including number of distinct values and value count distribution.
class GooglePrivacyDlpV2CategoricalStatsConfig {
  /// Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
  final GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2CategoricalStatsConfig({
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

  factory GooglePrivacyDlpV2CategoricalStatsConfig.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CategoricalStatsConfig(
      field: map['field'] == null
          ? null
          : GooglePrivacyDlpV2FieldId.fromMap(
              (map['field'] as Map).cast<String, dynamic>()),
    );
  }
}
