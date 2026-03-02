// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_disk_image_source_response.dart';

/// This is the OS disk image.
class GalleryOSDiskImageResponse {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final pulumi.Input<String>? hostCaching;
  /// This property indicates the size of the VHD to be created.
  final pulumi.Input<int> sizeInGB;
  /// The source for the disk image.
  final pulumi.Input<GalleryDiskImageSourceResponse>? source;

  /// Creates a new [GalleryOSDiskImageResponse].
  /// [hostCaching] The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  /// [sizeInGB] This property indicates the size of the VHD to be created.
  /// [source] The source for the disk image.
  GalleryOSDiskImageResponse({
    this.hostCaching,
    required this.sizeInGB,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostCaching': ?hostCaching,
      'sizeInGB': sizeInGB,
      'source': ?pulumi.Input.mapOptionalInputValue<GalleryDiskImageSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GalleryOSDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return GalleryOSDiskImageResponse(
      hostCaching: map['hostCaching'] == null ? null : (map['hostCaching'] as String).input(),
      sizeInGB: (map['sizeInGB'] as int).input(),
      source: map['source'] == null ? null : (GalleryDiskImageSourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

