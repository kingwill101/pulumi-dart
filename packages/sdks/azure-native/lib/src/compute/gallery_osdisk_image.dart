// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_disk_image_source.dart';
import 'host_caching.dart';

/// This is the OS disk image.
class GalleryOSDiskImage {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final pulumi.Input<HostCaching>? hostCaching;
  /// The source for the disk image.
  final pulumi.Input<GalleryDiskImageSource>? source;

  /// Creates a new [GalleryOSDiskImage].
  /// [hostCaching] The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  /// [source] The source for the disk image.
  GalleryOSDiskImage({
    this.hostCaching,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostCaching': ?pulumi.Input.mapOptionalInputValue<HostCaching, String>(hostCaching, (value) => value.value),
      'source': ?pulumi.Input.mapOptionalInputValue<GalleryDiskImageSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GalleryOSDiskImage.fromMap(Map<String, dynamic> map) {
    return GalleryOSDiskImage(
      hostCaching: map['hostCaching'] == null ? null : (HostCaching.fromValue(map['hostCaching']! as String)).input(),
      source: map['source'] == null ? null : (GalleryDiskImageSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

