// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_disk_image_source.dart';
import 'host_caching.dart';

/// This is the OS disk image.
class GalleryOSDiskImage {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final HostCaching? hostCaching;
  /// The source for the disk image.
  final GalleryDiskImageSource? source;

  /// Creates a new [GalleryOSDiskImage].
  /// [hostCaching] The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  /// [source] The source for the disk image.
  GalleryOSDiskImage({
    this.hostCaching,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostCaching': ?hostCaching == null ? null : hostCaching!.value,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory GalleryOSDiskImage.fromMap(Map<String, dynamic> map) {
    return GalleryOSDiskImage(
      hostCaching: map['hostCaching'] == null ? null : HostCaching.fromValue(map['hostCaching'] as String),
      source: map['source'] == null ? null : GalleryDiskImageSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

