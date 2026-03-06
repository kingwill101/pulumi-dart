// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is the OS disk image.
class GalleryOSDiskImageResponse {
  /// This property indicates the size of the VHD to be created.
  final pulumi.Input<double> sizeInMB;

  /// Creates a new [GalleryOSDiskImageResponse].
  /// [sizeInMB] This property indicates the size of the VHD to be created.
  const GalleryOSDiskImageResponse({
    required this.sizeInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeInMB': sizeInMB,
    };
  }

  factory GalleryOSDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return GalleryOSDiskImageResponse(
      sizeInMB: pulumi.Input.fromValue(map['sizeInMB'] as double),
    );
  }
}

