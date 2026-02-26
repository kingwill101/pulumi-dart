// ignore_for_file: unused_element, unnecessary_cast

/// Contains details about the image source used to create the disk.
class DiskImageDefaultsResponse {
  /// The Image resource used when creating the disk.
  final String sourceImage;

  DiskImageDefaultsResponse({
    required this.sourceImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceImage'] = sourceImage;
    return map;
  }

  factory DiskImageDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return DiskImageDefaultsResponse(
      sourceImage: map['sourceImage'] as String,
    );
  }
}
