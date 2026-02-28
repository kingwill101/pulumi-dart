// ignore_for_file: unused_element, unnecessary_cast

/// Contains details about the image source used to create the disk.
class DiskImageDefaults {
  /// The Image resource used when creating the disk.
  final String sourceImage;

  /// Creates a new [DiskImageDefaults].
  /// [sourceImage] The Image resource used when creating the disk.
  DiskImageDefaults({
    required this.sourceImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceImage'] = sourceImage;
    return map;
  }

  factory DiskImageDefaults.fromMap(Map<String, dynamic> map) {
    return DiskImageDefaults(
      sourceImage: map['sourceImage'] as String,
    );
  }
}
