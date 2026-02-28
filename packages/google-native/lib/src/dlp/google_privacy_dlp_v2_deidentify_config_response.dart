// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_image_transformations_response.dart';
import 'google_privacy_dlp_v2_info_type_transformations_response.dart';
import 'google_privacy_dlp_v2_record_transformations_response.dart';
import 'google_privacy_dlp_v2_transformation_error_handling_response.dart';

/// The configuration that controls how the data will change.
class GooglePrivacyDlpV2DeidentifyConfigResponse {
  /// Treat the dataset as an image and redact.
  final GooglePrivacyDlpV2ImageTransformationsResponse imageTransformations;

  /// Treat the dataset as free-form text and apply the same free text transformation everywhere.
  final GooglePrivacyDlpV2InfoTypeTransformationsResponse
      infoTypeTransformations;

  /// Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  final GooglePrivacyDlpV2RecordTransformationsResponse recordTransformations;

  /// Mode for handling transformation errors. If left unspecified, the default mode is `TransformationErrorHandling.ThrowError`.
  final GooglePrivacyDlpV2TransformationErrorHandlingResponse
      transformationErrorHandling;

  /// Creates a new [GooglePrivacyDlpV2DeidentifyConfigResponse].
  /// [imageTransformations] Treat the dataset as an image and redact.
  /// [infoTypeTransformations] Treat the dataset as free-form text and apply the same free text transformation everywhere.
  /// [recordTransformations] Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  /// [transformationErrorHandling] Mode for handling transformation errors. If left unspecified, the default mode is `TransformationErrorHandling.ThrowError`.
  GooglePrivacyDlpV2DeidentifyConfigResponse({
    required this.imageTransformations,
    required this.infoTypeTransformations,
    required this.recordTransformations,
    required this.transformationErrorHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageTransformations'] = imageTransformations.toMap();
    map['infoTypeTransformations'] = infoTypeTransformations.toMap();
    map['recordTransformations'] = recordTransformations.toMap();
    map['transformationErrorHandling'] = transformationErrorHandling.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2DeidentifyConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyConfigResponse(
      imageTransformations:
          GooglePrivacyDlpV2ImageTransformationsResponse.fromMap(
              (map['imageTransformations'] as Map).cast<String, dynamic>()),
      infoTypeTransformations:
          GooglePrivacyDlpV2InfoTypeTransformationsResponse.fromMap(
              (map['infoTypeTransformations'] as Map).cast<String, dynamic>()),
      recordTransformations:
          GooglePrivacyDlpV2RecordTransformationsResponse.fromMap(
              (map['recordTransformations'] as Map).cast<String, dynamic>()),
      transformationErrorHandling:
          GooglePrivacyDlpV2TransformationErrorHandlingResponse.fromMap(
              (map['transformationErrorHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
