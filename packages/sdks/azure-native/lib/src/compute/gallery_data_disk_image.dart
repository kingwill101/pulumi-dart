// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_disk_image_source.dart';
import 'host_caching.dart';

/// This is the data disk image.
class GalleryDataDiskImage {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final pulumi.Input<HostCaching?>? hostCaching;
  /// This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  final pulumi.Input<int> lun;
  /// The source for the disk image.
  final pulumi.Input<GalleryDiskImageSource?>? source;

  /// Creates a new [GalleryDataDiskImage].
  /// [hostCaching] The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  /// [lun] This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  /// [source] The source for the disk image.
  const GalleryDataDiskImage({
    this.hostCaching,
    required this.lun,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostCaching': ?pulumi.Input.mapOptionalInputValue<HostCaching, String>(hostCaching, (value) => value.wireValue),
      'lun': lun,
      'source': ?pulumi.Input.mapOptionalInputValue<GalleryDiskImageSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GalleryDataDiskImage.fromMap(Map<String, dynamic> map) {
    return GalleryDataDiskImage(
      hostCaching: (() { final guardedValue = map['hostCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostCaching.fromValue(guardedValue as String)); })(),
      lun: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['lun'])),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryDiskImageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
