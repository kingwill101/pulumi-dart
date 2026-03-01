// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_image_transformation_response.dart';

/// A type of transformation that is applied over images.
class GooglePrivacyDlpV2ImageTransformationsResponse {
  final List<GooglePrivacyDlpV2ImageTransformationResponse> transforms;

  /// Creates a new [GooglePrivacyDlpV2ImageTransformationsResponse].
  /// [transforms] Required.
  GooglePrivacyDlpV2ImageTransformationsResponse({required this.transforms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transforms':
          pulumi.Input.encodeList<
            GooglePrivacyDlpV2ImageTransformationResponse,
            Map<String, dynamic>
          >(transforms, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ImageTransformationsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2ImageTransformationsResponse(
      transforms:
          pulumi
              .Input.decodeList<GooglePrivacyDlpV2ImageTransformationResponse>(
            map['transforms'],
            (value) => GooglePrivacyDlpV2ImageTransformationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
