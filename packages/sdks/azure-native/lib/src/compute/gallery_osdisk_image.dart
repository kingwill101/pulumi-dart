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
  const GalleryOSDiskImage({
    this.hostCaching,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostCaching': ?pulumi.Input.mapOptionalInputValue<HostCaching, String>(hostCaching, (value) => value.wireValue),
      'source': ?pulumi.Input.mapOptionalInputValue<GalleryDiskImageSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GalleryOSDiskImage.fromMap(Map<String, dynamic> map) {
    return GalleryOSDiskImage(
      hostCaching: (() { final guardedValue = map['hostCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostCaching.fromValue(guardedValue as String)); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryDiskImageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
