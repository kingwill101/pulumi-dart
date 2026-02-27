// ignore_for_file: unused_element, unnecessary_cast

/// Contains details about the image source used to create the disk.
class DiskImageDefaultsVmmigrationV1alpha1 {
  /// The Image resource used when creating the disk.
  final String sourceImage;

  DiskImageDefaultsVmmigrationV1alpha1({
    required this.sourceImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceImage'] = sourceImage;
    return map;
  }

  factory DiskImageDefaultsVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DiskImageDefaultsVmmigrationV1alpha1(
      sourceImage: map['sourceImage'] as String,
    );
  }
}
