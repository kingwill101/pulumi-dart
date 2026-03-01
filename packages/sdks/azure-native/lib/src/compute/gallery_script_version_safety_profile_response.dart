// ignore_for_file: unused_element, unnecessary_cast


/// The safety profile of the Gallery Script Version.
class GalleryScriptVersionSafetyProfileResponse {
  /// Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  final bool? allowDeletionOfReplicatedLocations;

  /// Creates a new [GalleryScriptVersionSafetyProfileResponse].
  /// [allowDeletionOfReplicatedLocations] Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  GalleryScriptVersionSafetyProfileResponse({
    this.allowDeletionOfReplicatedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeletionOfReplicatedLocations': ?allowDeletionOfReplicatedLocations,
    };
  }

  factory GalleryScriptVersionSafetyProfileResponse.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionSafetyProfileResponse(
      allowDeletionOfReplicatedLocations: map['allowDeletionOfReplicatedLocations'] == null ? null : map['allowDeletionOfReplicatedLocations'] as bool,
    );
  }
}

