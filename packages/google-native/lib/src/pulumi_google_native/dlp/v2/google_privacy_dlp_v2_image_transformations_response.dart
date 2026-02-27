// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_image_transformation_response.dart';

/// A type of transformation that is applied over images.
class GooglePrivacyDlpV2ImageTransformationsResponse {
  final List<GooglePrivacyDlpV2ImageTransformationResponse> transforms;

  GooglePrivacyDlpV2ImageTransformationsResponse({
    required this.transforms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transforms'] = Input.encodeList<
        GooglePrivacyDlpV2ImageTransformationResponse,
        Map<String, dynamic>>(transforms, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2ImageTransformationsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ImageTransformationsResponse(
      transforms:
          Input.decodeList<GooglePrivacyDlpV2ImageTransformationResponse>(
              map['transforms'],
              (value) => GooglePrivacyDlpV2ImageTransformationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
