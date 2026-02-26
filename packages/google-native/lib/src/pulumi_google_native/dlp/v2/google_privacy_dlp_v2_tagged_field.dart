// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id.dart';
import 'google_privacy_dlp_v2_info_type.dart';

/// A column with a semantic tag attached.
class GooglePrivacyDlpV2TaggedField {
  /// A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  final String? customTag;

  /// Identifies the column.
  final GooglePrivacyDlpV2FieldId field;

  /// If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data
  final Map<String, dynamic>? inferred;

  /// A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported_by=RISK_ANALYSIS filter.
  final GooglePrivacyDlpV2InfoType? infoType;

  GooglePrivacyDlpV2TaggedField({
    this.customTag,
    required this.field,
    this.inferred,
    this.infoType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customTagValue = customTag;
    if (customTagValue != null) {
      map['customTag'] = customTagValue;
    }
    map['field'] = field.toMap();
    final inferredValue = inferred;
    if (inferredValue != null) {
      map['inferred'] = inferredValue;
    }
    final infoTypeValue = infoType;
    if (infoTypeValue != null) {
      map['infoType'] = infoTypeValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2TaggedField.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TaggedField(
      customTag: map['customTag'] == null ? null : map['customTag'] as String,
      field: GooglePrivacyDlpV2FieldId.fromMap(
          (map['field'] as Map).cast<String, dynamic>()),
      inferred: map['inferred'] == null
          ? null
          : (map['inferred'] as Map).cast<String, dynamic>(),
      infoType: map['infoType'] == null
          ? null
          : GooglePrivacyDlpV2InfoType.fromMap(
              (map['infoType'] as Map).cast<String, dynamic>()),
    );
  }
}
