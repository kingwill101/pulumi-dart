// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_info_type_response.dart';
import 'google_privacy_dlp_v2_primitive_transformation_response.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class GooglePrivacyDlpV2InfoTypeTransformationResponse {
  /// InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in `InspectConfig`.
  final List<GooglePrivacyDlpV2InfoTypeResponse> infoTypes;

  /// Primitive transformation to apply to the infoType.
  final GooglePrivacyDlpV2PrimitiveTransformationResponse
      primitiveTransformation;

  GooglePrivacyDlpV2InfoTypeTransformationResponse({
    required this.infoTypes,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['infoTypes'] = Input.encodeList<GooglePrivacyDlpV2InfoTypeResponse,
        Map<String, dynamic>>(infoTypes, (value) => value.toMap());
    map['primitiveTransformation'] = primitiveTransformation.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2InfoTypeTransformationResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeTransformationResponse(
      infoTypes: Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(
          map['infoTypes'],
          (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      primitiveTransformation:
          GooglePrivacyDlpV2PrimitiveTransformationResponse.fromMap(
              (map['primitiveTransformation'] as Map).cast<String, dynamic>()),
    );
  }
}
