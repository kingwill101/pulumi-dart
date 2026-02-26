// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_field_transformation_response.dart';
import 'google_privacy_dlp_v2_record_suppression_response.dart';

/// A type of transformation that is applied over structured data such as a table.
class GooglePrivacyDlpV2RecordTransformationsResponse {
  /// Transform the record by applying various field transformations.
  final List<GooglePrivacyDlpV2FieldTransformationResponse>
      fieldTransformations;

  /// Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  final List<GooglePrivacyDlpV2RecordSuppressionResponse> recordSuppressions;

  GooglePrivacyDlpV2RecordTransformationsResponse({
    required this.fieldTransformations,
    required this.recordSuppressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldTransformations'] = Input.encodeList<
        GooglePrivacyDlpV2FieldTransformationResponse,
        Map<String, dynamic>>(fieldTransformations, (value) => value.toMap());
    map['recordSuppressions'] = Input.encodeList<
        GooglePrivacyDlpV2RecordSuppressionResponse,
        Map<String, dynamic>>(recordSuppressions, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2RecordTransformationsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordTransformationsResponse(
      fieldTransformations:
          Input.decodeList<GooglePrivacyDlpV2FieldTransformationResponse>(
              map['fieldTransformations'],
              (value) => GooglePrivacyDlpV2FieldTransformationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recordSuppressions:
          Input.decodeList<GooglePrivacyDlpV2RecordSuppressionResponse>(
              map['recordSuppressions'],
              (value) => GooglePrivacyDlpV2RecordSuppressionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
