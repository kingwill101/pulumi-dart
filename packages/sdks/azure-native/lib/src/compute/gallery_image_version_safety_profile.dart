// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is the safety profile of the Gallery Image Version.
class GalleryImageVersionSafetyProfile {
  /// Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  final pulumi.Input<bool>? allowDeletionOfReplicatedLocations;
  /// Indicates whether or not the deletion is blocked for this Gallery Image Version if its End Of Life has not expired.
  final pulumi.Input<bool>? blockDeletionBeforeEndOfLife;

  /// Creates a new [GalleryImageVersionSafetyProfile].
  /// [allowDeletionOfReplicatedLocations] Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  /// [blockDeletionBeforeEndOfLife] Indicates whether or not the deletion is blocked for this Gallery Image Version if its End Of Life has not expired.
  const GalleryImageVersionSafetyProfile({
    this.allowDeletionOfReplicatedLocations,
    this.blockDeletionBeforeEndOfLife,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeletionOfReplicatedLocations': ?allowDeletionOfReplicatedLocations,
      'blockDeletionBeforeEndOfLife': ?blockDeletionBeforeEndOfLife,
    };
  }

  factory GalleryImageVersionSafetyProfile.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionSafetyProfile(
      allowDeletionOfReplicatedLocations: (() { final guardedValue = map['allowDeletionOfReplicatedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blockDeletionBeforeEndOfLife: (() { final guardedValue = map['blockDeletionBeforeEndOfLife']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

