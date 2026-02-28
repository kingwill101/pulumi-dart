// ignore_for_file: unused_element, unnecessary_cast


/// Contains a list of images to reference when building using a cache
class CacheFrom {
  /// Specifies cached images
  final List<String>? images;

  /// Creates a new [CacheFrom].
  /// [images] Specifies cached images
  CacheFrom({
    this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': ?images,
    };
  }

  factory CacheFrom.fromMap(Map<String, dynamic> map) {
    return CacheFrom(
      images: map['images'] == null ? null : (map['images'] as List).cast<String>(),
    );
  }
}

