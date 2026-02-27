// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_field_transformation.dart';
import 'google_privacy_dlp_v2_record_suppression.dart';

/// A type of transformation that is applied over structured data such as a table.
class GooglePrivacyDlpV2RecordTransformations {
  /// Transform the record by applying various field transformations.
  final List<GooglePrivacyDlpV2FieldTransformation>? fieldTransformations;

  /// Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  final List<GooglePrivacyDlpV2RecordSuppression>? recordSuppressions;

  GooglePrivacyDlpV2RecordTransformations({
    this.fieldTransformations,
    this.recordSuppressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldTransformationsValue = fieldTransformations;
    if (fieldTransformationsValue != null) {
      map['fieldTransformations'] = Input.encodeList<
              GooglePrivacyDlpV2FieldTransformation, Map<String, dynamic>>(
          fieldTransformationsValue, (value) => value.toMap());
    }
    final recordSuppressionsValue = recordSuppressions;
    if (recordSuppressionsValue != null) {
      map['recordSuppressions'] = Input.encodeList<
              GooglePrivacyDlpV2RecordSuppression, Map<String, dynamic>>(
          recordSuppressionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GooglePrivacyDlpV2RecordTransformations.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordTransformations(
      fieldTransformations: map['fieldTransformations'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2FieldTransformation>(
              map['fieldTransformations'],
              (value) => GooglePrivacyDlpV2FieldTransformation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recordSuppressions: map['recordSuppressions'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2RecordSuppression>(
              map['recordSuppressions'],
              (value) => GooglePrivacyDlpV2RecordSuppression.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
