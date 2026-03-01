// ignore_for_file: unused_element, unnecessary_cast


/// This is the safety profile of the Gallery Image Version.
class GalleryImageVersionSafetyProfile {
  /// Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  final bool? allowDeletionOfReplicatedLocations;
  /// Indicates whether or not the deletion is blocked for this Gallery Image Version if its End Of Life has not expired.
  final bool? blockDeletionBeforeEndOfLife;

  /// Creates a new [GalleryImageVersionSafetyProfile].
  /// [allowDeletionOfReplicatedLocations] Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  /// [blockDeletionBeforeEndOfLife] Indicates whether or not the deletion is blocked for this Gallery Image Version if its End Of Life has not expired.
  GalleryImageVersionSafetyProfile({
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
      allowDeletionOfReplicatedLocations: map['allowDeletionOfReplicatedLocations'] == null ? null : map['allowDeletionOfReplicatedLocations'] as bool,
      blockDeletionBeforeEndOfLife: map['blockDeletionBeforeEndOfLife'] == null ? null : map['blockDeletionBeforeEndOfLife'] as bool,
    );
  }
}

