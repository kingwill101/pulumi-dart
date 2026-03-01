// ignore_for_file: unused_element, unnecessary_cast


/// This is the OS disk image.
class GalleryOSDiskImageResponse {
  /// This property indicates the size of the VHD to be created.
  final double sizeInMB;

  /// Creates a new [GalleryOSDiskImageResponse].
  /// [sizeInMB] This property indicates the size of the VHD to be created.
  GalleryOSDiskImageResponse({
    required this.sizeInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeInMB': sizeInMB,
    };
  }

  factory GalleryOSDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return GalleryOSDiskImageResponse(
      sizeInMB: map['sizeInMB'] as double,
    );
  }
}

