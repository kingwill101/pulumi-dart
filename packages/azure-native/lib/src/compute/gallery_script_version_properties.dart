// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_script_version_publishing_profile.dart';
import 'gallery_script_version_safety_profile.dart';

/// Describes the properties of a gallery script version.
class GalleryScriptVersionProperties {
  /// The publishing profile of a gallery image version.
  final GalleryScriptVersionPublishingProfile publishingProfile;
  /// The safety profile of the Gallery Script Version.
  final GalleryScriptVersionSafetyProfile? safetyProfile;

  /// Creates a new [GalleryScriptVersionProperties].
  /// [publishingProfile] The publishing profile of a gallery image version.
  /// [safetyProfile] The safety profile of the Gallery Script Version.
  GalleryScriptVersionProperties({
    required this.publishingProfile,
    this.safetyProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishingProfile': publishingProfile.toMap(),
      'safetyProfile': ?safetyProfile == null ? null : safetyProfile!.toMap(),
    };
  }

  factory GalleryScriptVersionProperties.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionProperties(
      publishingProfile: GalleryScriptVersionPublishingProfile.fromMap((map['publishingProfile'] as Map).cast<String, dynamic>()),
      safetyProfile: map['safetyProfile'] == null ? null : GalleryScriptVersionSafetyProfile.fromMap((map['safetyProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

