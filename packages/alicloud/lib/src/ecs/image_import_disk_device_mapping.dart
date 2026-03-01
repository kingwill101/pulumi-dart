// ignore_for_file: unused_element, unnecessary_cast


class ImageImportDiskDeviceMapping {
  /// The device name of the disk.
  final String? device;
  /// The size of the disk. Default value: `5`.
  final int? diskImageSize;
  /// The format of the image. Valid values: `RAW`, `VHD`, `qcow2`.
  final String? format;
  /// The OSS bucket where the image file is stored.
  final String? ossBucket;
  /// The name (key) of the object that the uploaded image is stored as in the OSS bucket.
  final String? ossObject;

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
      device: map['device'] == null ? null : map['device'] as String,
      diskImageSize: map['diskImageSize'] == null ? null : map['diskImageSize'] as int,
      format: map['format'] == null ? null : map['format'] as String,
      ossBucket: map['ossBucket'] == null ? null : map['ossBucket'] as String,
      ossObject: map['ossObject'] == null ? null : map['ossObject'] as String,
    );
  }
}

