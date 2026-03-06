// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The safety profile of the Gallery Application Version.
class GalleryApplicationVersionSafetyProfileResponse {
  /// Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  final pulumi.Input<bool>? allowDeletionOfReplicatedLocations;

  /// Creates a new [GalleryApplicationVersionSafetyProfileResponse].
  /// [allowDeletionOfReplicatedLocations] Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  const GalleryApplicationVersionSafetyProfileResponse({
    this.allowDeletionOfReplicatedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeletionOfReplicatedLocations': ?allowDeletionOfReplicatedLocations,
    };
  }

  factory GalleryApplicationVersionSafetyProfileResponse.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionSafetyProfileResponse(
      allowDeletionOfReplicatedLocations: (() { final guardedValue = map['allowDeletionOfReplicatedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

