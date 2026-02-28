// ignore_for_file: unused_element, unnecessary_cast

/// Contains details about the image source used to create the disk.
class DiskImageDefaultsResponseVmmigrationV1alpha1 {
  /// The Image resource used when creating the disk.
  final String sourceImage;

  /// Creates a new [DiskImageDefaultsResponseVmmigrationV1alpha1].
  /// [sourceImage] The Image resource used when creating the disk.
  DiskImageDefaultsResponseVmmigrationV1alpha1({
    required this.sourceImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceImage'] = sourceImage;
    return map;
  }

  factory DiskImageDefaultsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DiskImageDefaultsResponseVmmigrationV1alpha1(
      sourceImage: map['sourceImage'] as String,
    );
  }
}
