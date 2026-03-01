// ignore_for_file: unused_element, unnecessary_cast


/// Specifies information about the gallery image version that you want to create or update.
class GalleryImageVersion {
  /// This is the version of the gallery image.
  final String? name;

  /// Creates a new [GalleryImageVersion].
  /// [name] This is the version of the gallery image.
  GalleryImageVersion({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GalleryImageVersion.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersion(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

