// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_image_version_uefi_settings.dart';

/// The security profile of a gallery image version
class ImageVersionSecurityProfile {
  /// Contains UEFI settings for the image version.
  final GalleryImageVersionUefiSettings? uefiSettings;

  /// Creates a new [ImageVersionSecurityProfile].
  /// [uefiSettings] Contains UEFI settings for the image version.
  ImageVersionSecurityProfile({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory ImageVersionSecurityProfile.fromMap(Map<String, dynamic> map) {
    return ImageVersionSecurityProfile(
      uefiSettings: map['uefiSettings'] == null ? null : GalleryImageVersionUefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

