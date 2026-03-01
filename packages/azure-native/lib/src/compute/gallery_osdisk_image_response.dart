// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_disk_image_source_response.dart';

/// This is the OS disk image.
class GalleryOSDiskImageResponse {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final String? hostCaching;
  /// This property indicates the size of the VHD to be created.
  final int sizeInGB;
  /// The source for the disk image.
  final GalleryDiskImageSourceResponse? source;

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
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory GalleryOSDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return GalleryOSDiskImageResponse(
      hostCaching: map['hostCaching'] == null ? null : map['hostCaching'] as String,
      sizeInGB: map['sizeInGB'] as int,
      source: map['source'] == null ? null : GalleryDiskImageSourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

