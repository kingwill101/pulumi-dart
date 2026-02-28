// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_transformation_response.dart';

/// A type of transformation that will scan unstructured text and apply various `PrimitiveTransformation`s to each finding, where the transformation is applied to only values that were identified as a specific info_type.
class GooglePrivacyDlpV2InfoTypeTransformationsResponse {
  /// Transformation for each infoType. Cannot specify more than one for a given infoType.
  final List<GooglePrivacyDlpV2InfoTypeTransformationResponse> transformations;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeTransformationsResponse].
  /// [transformations] Transformation for each infoType. Cannot specify more than one for a given infoType.
  GooglePrivacyDlpV2InfoTypeTransformationsResponse({
    required this.transformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transformations'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2InfoTypeTransformationResponse,
        Map<String, dynamic>>(transformations, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2InfoTypeTransformationsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeTransformationsResponse(
      transformations: pulumi.Input.decodeList<
              GooglePrivacyDlpV2InfoTypeTransformationResponse>(
          map['transformations'],
          (value) => GooglePrivacyDlpV2InfoTypeTransformationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
