// ignore_for_file: unused_element, unnecessary_cast

class GetImageOutputResourceContainer {
  /// Set of URIs for created containers.
  final List<String> imageUris;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Creates a new [GetImageOutputResourceContainer].
  /// [imageUris] Set of URIs for created containers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetImageOutputResourceContainer({
    required this.imageUris,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'imageUris': imageUris, 'region': region};
  }

  factory GetImageOutputResourceContainer.fromMap(Map<String, dynamic> map) {
    return GetImageOutputResourceContainer(
      imageUris: (map['imageUris'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
