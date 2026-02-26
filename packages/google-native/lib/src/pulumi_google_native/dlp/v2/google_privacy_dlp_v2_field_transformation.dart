// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_field_id.dart';
import 'google_privacy_dlp_v2_info_type_transformations.dart';
import 'google_privacy_dlp_v2_primitive_transformation.dart';
import 'google_privacy_dlp_v2_record_condition.dart';

/// The transformation to apply to the field.
class GooglePrivacyDlpV2FieldTransformation {
  /// Only apply the transformation if the condition evaluates to true for the given `RecordCondition`. The conditions are allowed to reference fields that are not used in the actual transformation. Example Use Cases: - Apply a different bucket transformation to an age column if the zip code column for the same record is within a specific range. - Redact a field if the date of birth field is greater than 85.
  final GooglePrivacyDlpV2RecordCondition? condition;

  /// Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId. FieldId name matching ignores the index. For example, instead of "contact.nums[0].type", use "contact.nums.type".
  final List<GooglePrivacyDlpV2FieldId> fields;

  /// Treat the contents of the field as free text, and selectively transform content that matches an `InfoType`.
  final GooglePrivacyDlpV2InfoTypeTransformations? infoTypeTransformations;

  /// Apply the transformation to the entire field.
  final GooglePrivacyDlpV2PrimitiveTransformation? primitiveTransformation;

  GooglePrivacyDlpV2FieldTransformation({
    this.condition,
    required this.fields,
    this.infoTypeTransformations,
    this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    map['fields'] =
        Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(
            fields, (value) => value.toMap());
    final infoTypeTransformationsValue = infoTypeTransformations;
    if (infoTypeTransformationsValue != null) {
      map['infoTypeTransformations'] = infoTypeTransformationsValue.toMap();
    }
    final primitiveTransformationValue = primitiveTransformation;
    if (primitiveTransformationValue != null) {
      map['primitiveTransformation'] = primitiveTransformationValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2FieldTransformation.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FieldTransformation(
      condition: map['condition'] == null
          ? null
          : GooglePrivacyDlpV2RecordCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      fields: Input.decodeList<GooglePrivacyDlpV2FieldId>(
          map['fields'],
          (value) => GooglePrivacyDlpV2FieldId.fromMap(
              (value as Map).cast<String, dynamic>())),
      infoTypeTransformations: map['infoTypeTransformations'] == null
          ? null
          : GooglePrivacyDlpV2InfoTypeTransformations.fromMap(
              (map['infoTypeTransformations'] as Map).cast<String, dynamic>()),
      primitiveTransformation: map['primitiveTransformation'] == null
          ? null
          : GooglePrivacyDlpV2PrimitiveTransformation.fromMap(
              (map['primitiveTransformation'] as Map).cast<String, dynamic>()),
    );
  }
}
