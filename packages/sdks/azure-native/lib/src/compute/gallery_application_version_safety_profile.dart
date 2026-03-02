// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The safety profile of the Gallery Application Version.
class GalleryApplicationVersionSafetyProfile {
  /// Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  final pulumi.Input<bool>? allowDeletionOfReplicatedLocations;

  /// Creates a new [GalleryApplicationVersionSafetyProfile].
  /// [allowDeletionOfReplicatedLocations] Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  GalleryApplicationVersionSafetyProfile({
    this.allowDeletionOfReplicatedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeletionOfReplicatedLocations': ?allowDeletionOfReplicatedLocations,
    };
  }

  factory GalleryApplicationVersionSafetyProfile.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionSafetyProfile(
      allowDeletionOfReplicatedLocations: map['allowDeletionOfReplicatedLocations'] == null ? null : (map['allowDeletionOfReplicatedLocations'] as bool).input(),
    );
  }
}

