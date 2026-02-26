// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_color_response.dart';
import 'google_privacy_dlp_v2_selected_info_types_response.dart';

/// Configuration for determining how redaction of images should occur.
class GooglePrivacyDlpV2ImageTransformationResponse {
  /// Apply transformation to all findings not specified in other ImageTransformation's selected_info_types. Only one instance is allowed within the ImageTransformations message.
  final Map<String, dynamic> allInfoTypes;

  /// Apply transformation to all text that doesn't match an infoType. Only one instance is allowed within the ImageTransformations message.
  final Map<String, dynamic> allText;

  /// The color to use when redacting content from an image. If not specified, the default is black.
  final GooglePrivacyDlpV2ColorResponse redactionColor;

  /// Apply transformation to the selected info_types.
  final GooglePrivacyDlpV2SelectedInfoTypesResponse selectedInfoTypes;

  GooglePrivacyDlpV2ImageTransformationResponse({
    required this.allInfoTypes,
    required this.allText,
    required this.redactionColor,
    required this.selectedInfoTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allInfoTypes'] = allInfoTypes;
    map['allText'] = allText;
    map['redactionColor'] = redactionColor.toMap();
    map['selectedInfoTypes'] = selectedInfoTypes.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2ImageTransformationResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ImageTransformationResponse(
      allInfoTypes: (map['allInfoTypes'] as Map).cast<String, dynamic>(),
      allText: (map['allText'] as Map).cast<String, dynamic>(),
      redactionColor: GooglePrivacyDlpV2ColorResponse.fromMap(
          (map['redactionColor'] as Map).cast<String, dynamic>()),
      selectedInfoTypes: GooglePrivacyDlpV2SelectedInfoTypesResponse.fromMap(
          (map['selectedInfoTypes'] as Map).cast<String, dynamic>()),
    );
  }
}
