// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_info_type_response.dart';

/// Apply transformation to the selected info_types.
class GooglePrivacyDlpV2SelectedInfoTypesResponse {
  /// InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.
  final List<GooglePrivacyDlpV2InfoTypeResponse> infoTypes;

  GooglePrivacyDlpV2SelectedInfoTypesResponse({
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['infoTypes'] = Input.encodeList<GooglePrivacyDlpV2InfoTypeResponse,
        Map<String, dynamic>>(infoTypes, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2SelectedInfoTypesResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SelectedInfoTypesResponse(
      infoTypes: Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(
          map['infoTypes'],
          (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
