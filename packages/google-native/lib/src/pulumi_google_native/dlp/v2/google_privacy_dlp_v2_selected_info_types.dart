// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_info_type.dart';

/// Apply transformation to the selected info_types.
class GooglePrivacyDlpV2SelectedInfoTypes {
  /// InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.
  final List<GooglePrivacyDlpV2InfoType> infoTypes;

  GooglePrivacyDlpV2SelectedInfoTypes({
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['infoTypes'] =
        Input.encodeList<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(
            infoTypes, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2SelectedInfoTypes.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SelectedInfoTypes(
      infoTypes: Input.decodeList<GooglePrivacyDlpV2InfoType>(
          map['infoTypes'],
          (value) => GooglePrivacyDlpV2InfoType.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
