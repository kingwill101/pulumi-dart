// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_image_version_uefi_settings.dart';

/// The security profile of a gallery image version
class ImageVersionSecurityProfile {
  /// Contains UEFI settings for the image version.
  final pulumi.Input<GalleryImageVersionUefiSettings>? uefiSettings;

  /// Creates a new [ImageVersionSecurityProfile].
  /// [uefiSettings] Contains UEFI settings for the image version.
  ImageVersionSecurityProfile({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<GalleryImageVersionUefiSettings, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory ImageVersionSecurityProfile.fromMap(Map<String, dynamic> map) {
    return ImageVersionSecurityProfile(
      uefiSettings: map['uefiSettings'] == null ? null : (GalleryImageVersionUefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

