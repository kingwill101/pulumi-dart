// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_version_publishing_profile.dart';
import 'gallery_script_version_safety_profile.dart';

/// Describes the properties of a gallery script version.
class GalleryScriptVersionProperties {
  /// The publishing profile of a gallery image version.
  final pulumi.Input<GalleryScriptVersionPublishingProfile> publishingProfile;
  /// The safety profile of the Gallery Script Version.
  final pulumi.Input<GalleryScriptVersionSafetyProfile>? safetyProfile;

  /// Creates a new [GalleryScriptVersionProperties].
  /// [publishingProfile] The publishing profile of a gallery image version.
  /// [safetyProfile] The safety profile of the Gallery Script Version.
  const GalleryScriptVersionProperties({
    required this.publishingProfile,
    this.safetyProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishingProfile': pulumi.Input.mapInputValue<GalleryScriptVersionPublishingProfile, Map<String, dynamic>>(publishingProfile, (value) => value.toMap()),
      'safetyProfile': ?pulumi.Input.mapOptionalInputValue<GalleryScriptVersionSafetyProfile, Map<String, dynamic>>(safetyProfile, (value) => value.toMap()),
    };
  }

  factory GalleryScriptVersionProperties.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionProperties(
      publishingProfile: pulumi.Input.fromValue(GalleryScriptVersionPublishingProfile.fromMap((map['publishingProfile']! as Map).cast<String, dynamic>())),
      safetyProfile: (() { final guardedValue = map['safetyProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryScriptVersionSafetyProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

