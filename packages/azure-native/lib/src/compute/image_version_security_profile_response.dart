// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_image_version_uefi_settings_response.dart';

/// The security profile of a gallery image version
class ImageVersionSecurityProfileResponse {
  /// Contains UEFI settings for the image version.
  final GalleryImageVersionUefiSettingsResponse? uefiSettings;

  /// Creates a new [ImageVersionSecurityProfileResponse].
  /// [uefiSettings] Contains UEFI settings for the image version.
  ImageVersionSecurityProfileResponse({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory ImageVersionSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return ImageVersionSecurityProfileResponse(
      uefiSettings: map['uefiSettings'] == null ? null : GalleryImageVersionUefiSettingsResponse.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

