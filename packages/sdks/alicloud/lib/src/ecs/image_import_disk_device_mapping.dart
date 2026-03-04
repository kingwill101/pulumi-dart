// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageImportDiskDeviceMapping {
  /// The device name of the disk.
  final pulumi.Input<String>? device;

  /// The size of the disk. Default value: `5`.
  final pulumi.Input<int>? diskImageSize;

  /// The format of the image. Valid values: `RAW`, `VHD`, `qcow2`.
  final pulumi.Input<String>? format;

  /// The OSS bucket where the image file is stored.
  final pulumi.Input<String>? ossBucket;

  /// The name (key) of the object that the uploaded image is stored as in the OSS bucket.
  final pulumi.Input<String>? ossObject;

  /// Creates a new [ImageImportDiskDeviceMapping].
  /// [device] The device name of the disk.
  /// [diskImageSize] The size of the disk. Default value: `5`.
  /// [format] The format of the image. Valid values: `RAW`, `VHD`, `qcow2`.
  /// [ossBucket] The OSS bucket where the image file is stored.
  /// [ossObject] The name (key) of the object that the uploaded image is stored as in the OSS bucket.
  ImageImportDiskDeviceMapping({
    this.device,
    this.diskImageSize,
    this.format,
    this.ossBucket,
    this.ossObject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'diskImageSize': ?diskImageSize,
      'format': ?format,
      'ossBucket': ?ossBucket,
      'ossObject': ?ossObject,
    };
  }

  factory ImageImportDiskDeviceMapping.fromMap(Map<String, dynamic> map) {
    return ImageImportDiskDeviceMapping(
      device: (() {
        final guardedValue = map['device'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskImageSize: (() {
        final guardedValue = map['diskImageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ossBucket: (() {
        final guardedValue = map['ossBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ossObject: (() {
        final guardedValue = map['ossObject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
