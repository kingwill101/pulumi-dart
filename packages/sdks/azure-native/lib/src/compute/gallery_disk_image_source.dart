// ignore_for_file: unused_element, unnecessary_cast


/// The source for the disk image.
class GalleryDiskImageSource {
  /// The id of the gallery artifact version source.
  final String? id;
  /// The Storage Account Id that contains the vhd blob being used as a source for this artifact version.
  final String? storageAccountId;
  /// The uri of the gallery artifact version source. Currently used to specify vhd/blob source.
  final String? uri;

  /// Creates a new [GalleryDiskImageSource].
  /// [id] The id of the gallery artifact version source.
  /// [storageAccountId] The Storage Account Id that contains the vhd blob being used as a source for this artifact version.
  /// [uri] The uri of the gallery artifact version source. Currently used to specify vhd/blob source.
  GalleryDiskImageSource({
    this.id,
    this.storageAccountId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'storageAccountId': ?storageAccountId,
      'uri': ?uri,
    };
  }

  factory GalleryDiskImageSource.fromMap(Map<String, dynamic> map) {
    return GalleryDiskImageSource(
      id: map['id'] == null ? null : map['id'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

