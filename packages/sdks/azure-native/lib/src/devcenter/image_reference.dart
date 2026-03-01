// ignore_for_file: unused_element, unnecessary_cast


/// Image reference information
class ImageReference {
  /// Image ID, or Image version ID. When Image ID is provided, its latest version will be used.
  final String? id;

  /// Creates a new [ImageReference].
  /// [id] Image ID, or Image version ID. When Image ID is provided, its latest version will be used.
  ImageReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ImageReference.fromMap(Map<String, dynamic> map) {
    return ImageReference(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

