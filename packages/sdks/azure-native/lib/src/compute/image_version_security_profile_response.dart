// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_image_version_uefi_settings_response.dart';

/// The security profile of a gallery image version
class ImageVersionSecurityProfileResponse {
  /// Contains UEFI settings for the image version.
  final pulumi.Input<GalleryImageVersionUefiSettingsResponse>? uefiSettings;

  /// Creates a new [ImageVersionSecurityProfileResponse].
  /// [uefiSettings] Contains UEFI settings for the image version.
  const ImageVersionSecurityProfileResponse({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<GalleryImageVersionUefiSettingsResponse, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory ImageVersionSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return ImageVersionSecurityProfileResponse(
      uefiSettings: (() { final guardedValue = map['uefiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryImageVersionUefiSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

