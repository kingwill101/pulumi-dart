// ignore_for_file: unused_element, unnecessary_cast


/// A feature for gallery image.
class GalleryImageFeature {
  /// The name of the gallery image feature.
  final String? name;
  /// The minimum gallery image version which supports this feature.
  final String? startsAtVersion;
  /// The value of the gallery image feature.
  final String? value;

  /// Creates a new [GalleryImageFeature].
  /// [name] The name of the gallery image feature.
  /// [startsAtVersion] The minimum gallery image version which supports this feature.
  /// [value] The value of the gallery image feature.
  GalleryImageFeature({
    this.name,
    this.startsAtVersion,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'startsAtVersion': ?startsAtVersion,
      'value': ?value,
    };
  }

  factory GalleryImageFeature.fromMap(Map<String, dynamic> map) {
    return GalleryImageFeature(
      name: map['name'] == null ? null : map['name'] as String,
      startsAtVersion: map['startsAtVersion'] == null ? null : map['startsAtVersion'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

