// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_disk_image_source.dart';
import 'host_caching.dart';

/// This is the data disk image.
class GalleryDataDiskImage {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final HostCaching? hostCaching;
  /// This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  final int lun;
  /// The source for the disk image.
  final GalleryDiskImageSource? source;

  /// Creates a new [GalleryDataDiskImage].
  /// [hostCaching] The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  /// [lun] This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  /// [source] The source for the disk image.
  GalleryDataDiskImage({
    this.hostCaching,
    required this.lun,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostCaching': ?hostCaching == null ? null : hostCaching!.value,
      'lun': lun,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory GalleryDataDiskImage.fromMap(Map<String, dynamic> map) {
    return GalleryDataDiskImage(
      hostCaching: map['hostCaching'] == null ? null : HostCaching.fromValue(map['hostCaching'] as String),
      lun: map['lun'] as int,
      source: map['source'] == null ? null : GalleryDiskImageSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

