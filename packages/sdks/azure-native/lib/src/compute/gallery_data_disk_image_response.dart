// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_disk_image_source_response.dart';

/// This is the data disk image.
class GalleryDataDiskImageResponse {
  /// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  final pulumi.Input<String>? hostCaching;
  /// This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  final pulumi.Input<int> lun;
  /// This property indicates the size of the VHD to be created.
  final pulumi.Input<int> sizeInGB;
  /// The source for the disk image.
  final pulumi.Input<GalleryDiskImageSourceResponse>? source;

  /// Creates a new [GalleryDataDiskImageResponse].
  /// [hostCaching] The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
  /// [lun] This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  /// [sizeInGB] This property indicates the size of the VHD to be created.
  /// [source] The source for the disk image.
  const GalleryDataDiskImageResponse({
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
      'source': ?pulumi.Input.mapOptionalInputValue<GalleryDiskImageSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GalleryDataDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return GalleryDataDiskImageResponse(
      hostCaching: (() { final guardedValue = map['hostCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      sizeInGB: pulumi.Input.fromValue(map['sizeInGB'] as int),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryDiskImageSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
