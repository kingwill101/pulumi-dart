// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_disk_image_source_response.dart';

/// This is the data disk image.
class GalleryDataDiskImageResponse {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final String? hostCaching;
  /// This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  final int lun;
  /// This property indicates the size of the VHD to be created.
  final int sizeInGB;
  /// The source for the disk image.
  final GalleryDiskImageSourceResponse? source;

  /// Creates a new [GalleryDataDiskImageResponse].
  /// [hostCaching] The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  /// [lun] This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  /// [sizeInGB] This property indicates the size of the VHD to be created.
  /// [source] The source for the disk image.
  GalleryDataDiskImageResponse({
    this.hostCaching,
    required this.lun,
    required this.sizeInGB,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostCaching': ?hostCaching,
      'lun': lun,
      'sizeInGB': sizeInGB,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory GalleryDataDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return GalleryDataDiskImageResponse(
      hostCaching: map['hostCaching'] == null ? null : map['hostCaching'] as String,
      lun: map['lun'] as int,
      sizeInGB: map['sizeInGB'] as int,
      source: map['source'] == null ? null : GalleryDiskImageSourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

