// ignore_for_file: unused_element, unnecessary_cast

/// Contains details about the image source used to create the disk.
class DiskImageDefaults2 {
  /// The Image resource used when creating the disk.
  final String sourceImage;

  DiskImageDefaults2({
    required this.sourceImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceImage'] = sourceImage;
    return map;
  }

  factory DiskImageDefaults2.fromMap(Map<String, dynamic> map) {
    return DiskImageDefaults2(
      sourceImage: map['sourceImage'] as String,
    );
  }
}
