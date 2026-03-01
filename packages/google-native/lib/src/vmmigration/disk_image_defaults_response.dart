// ignore_for_file: unused_element, unnecessary_cast

/// Contains details about the image source used to create the disk.
class DiskImageDefaultsResponse {
  /// The Image resource used when creating the disk.
  final String sourceImage;

  /// Creates a new [DiskImageDefaultsResponse].
  /// [sourceImage] The Image resource used when creating the disk.
  DiskImageDefaultsResponse({required this.sourceImage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sourceImage': sourceImage};
  }

  factory DiskImageDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return DiskImageDefaultsResponse(sourceImage: map['sourceImage'] as String);
  }
}
