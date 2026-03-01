// ignore_for_file: unused_element, unnecessary_cast


/// The safety profile of the Gallery Script Version.
class GalleryScriptVersionSafetyProfile {
  /// Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  final bool? allowDeletionOfReplicatedLocations;

  /// Creates a new [GalleryScriptVersionSafetyProfile].
  /// [allowDeletionOfReplicatedLocations] Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  GalleryScriptVersionSafetyProfile({
    this.allowDeletionOfReplicatedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeletionOfReplicatedLocations': ?allowDeletionOfReplicatedLocations,
    };
  }

  factory GalleryScriptVersionSafetyProfile.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionSafetyProfile(
      allowDeletionOfReplicatedLocations: map['allowDeletionOfReplicatedLocations'] == null ? null : map['allowDeletionOfReplicatedLocations'] as bool,
    );
  }
}

