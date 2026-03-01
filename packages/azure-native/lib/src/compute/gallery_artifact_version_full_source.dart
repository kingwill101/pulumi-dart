// ignore_for_file: unused_element, unnecessary_cast


/// The source of the gallery artifact version.
class GalleryArtifactVersionFullSource {
  /// The resource Id of the source Community Gallery Image.  Only required when using Community Gallery Image as a source.
  final String? communityGalleryImageId;
  /// The id of the gallery artifact version source.
  final String? id;
  /// The resource Id of the source virtual machine.  Only required when capturing a virtual machine to source this Gallery Image Version.
  final String? virtualMachineId;

  /// Creates a new [GalleryArtifactVersionFullSource].
  /// [communityGalleryImageId] The resource Id of the source Community Gallery Image.  Only required when using Community Gallery Image as a source.
  /// [id] The id of the gallery artifact version source.
  /// [virtualMachineId] The resource Id of the source virtual machine.  Only required when capturing a virtual machine to source this Gallery Image Version.
  GalleryArtifactVersionFullSource({
    this.communityGalleryImageId,
    this.id,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryImageId': ?communityGalleryImageId,
      'id': ?id,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory GalleryArtifactVersionFullSource.fromMap(Map<String, dynamic> map) {
    return GalleryArtifactVersionFullSource(
      communityGalleryImageId: map['communityGalleryImageId'] == null ? null : map['communityGalleryImageId'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      virtualMachineId: map['virtualMachineId'] == null ? null : map['virtualMachineId'] as String,
    );
  }
}

