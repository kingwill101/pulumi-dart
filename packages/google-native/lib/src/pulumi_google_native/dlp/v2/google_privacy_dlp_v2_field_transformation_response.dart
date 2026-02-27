// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';
import 'google_privacy_dlp_v2_info_type_transformations_response.dart';
import 'google_privacy_dlp_v2_primitive_transformation_response.dart';
import 'google_privacy_dlp_v2_record_condition_response.dart';

/// The transformation to apply to the field.
class GooglePrivacyDlpV2FieldTransformationResponse {
  /// Only apply the transformation if the condition evaluates to true for the given `RecordCondition`. The conditions are allowed to reference fields that are not used in the actual transformation. Example Use Cases: - Apply a different bucket transformation to an age column if the zip code column for the same record is within a specific range. - Redact a field if the date of birth field is greater than 85.
  final GooglePrivacyDlpV2RecordConditionResponse condition;

  /// Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId. FieldId name matching ignores the index. For example, instead of "contact.nums[0].type", use "contact.nums.type".
  final List<GooglePrivacyDlpV2FieldIdResponse> fields;

  /// Treat the contents of the field as free text, and selectively transform content that matches an `InfoType`.
  final GooglePrivacyDlpV2InfoTypeTransformationsResponse
      infoTypeTransformations;

  /// Apply the transformation to the entire field.
  final GooglePrivacyDlpV2PrimitiveTransformationResponse
      primitiveTransformation;

  GooglePrivacyDlpV2FieldTransformationResponse({
    required this.condition,
    required this.fields,
    required this.infoTypeTransformations,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition.toMap();
    map['fields'] = pulumi.Input.encodeList<GooglePrivacyDlpV2FieldIdResponse,
        Map<String, dynamic>>(fields, (value) => value.toMap());
    map['infoTypeTransformations'] = infoTypeTransformations.toMap();
    map['primitiveTransformation'] = primitiveTransformation.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2FieldTransformationResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FieldTransformationResponse(
      condition: GooglePrivacyDlpV2RecordConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      fields: pulumi.Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(
          map['fields'],
          (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      infoTypeTransformations:
          GooglePrivacyDlpV2InfoTypeTransformationsResponse.fromMap(
              (map['infoTypeTransformations'] as Map).cast<String, dynamic>()),
      primitiveTransformation:
          GooglePrivacyDlpV2PrimitiveTransformationResponse.fromMap(
              (map['primitiveTransformation'] as Map).cast<String, dynamic>()),
    );
  }
}
