// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id.dart';

/// A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2QuasiIdField {
  /// A auxiliary field.
  final String? customTag;

  /// Identifies the column.
  final GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2QuasiIdField({
    this.customTag,
    this.field,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customTagValue = customTag;
    if (customTagValue != null) {
      map['customTag'] = customTagValue;
    }
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2QuasiIdField.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2QuasiIdField(
      customTag: map['customTag'] == null ? null : map['customTag'] as String,
      field: map['field'] == null
          ? null
          : GooglePrivacyDlpV2FieldId.fromMap(
              (map['field'] as Map).cast<String, dynamic>()),
    );
  }
}
