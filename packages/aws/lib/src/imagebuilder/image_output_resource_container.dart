// ignore_for_file: unused_element, unnecessary_cast

class ImageOutputResourceContainer {
  /// Set of URIs for created containers.
  final List<String>? imageUris;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Creates a new [ImageOutputResourceContainer].
  /// [imageUris] Set of URIs for created containers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ImageOutputResourceContainer({
    this.imageUris,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageUrisValue = imageUris;
    if (imageUrisValue != null) {
      map['imageUris'] = imageUrisValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ImageOutputResourceContainer.fromMap(Map<String, dynamic> map) {
    return ImageOutputResourceContainer(
      imageUris: map['imageUris'] == null
          ? null
          : (map['imageUris'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
