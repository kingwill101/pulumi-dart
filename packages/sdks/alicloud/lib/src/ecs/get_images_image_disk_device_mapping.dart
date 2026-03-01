// ignore_for_file: unused_element, unnecessary_cast


class GetImagesImageDiskDeviceMapping {
  /// The device information of the created disk: such as /dev/xvdb.
  final String device;
  /// The size of the created disk.
  final String size;
  /// The ID of the snapshot used to create the custom image.
  final String snapshotId;

  /// Creates a new [GetImagesImageDiskDeviceMapping].
  /// [device] The device information of the created disk: such as /dev/xvdb.
  /// [size] The size of the created disk.
  /// [snapshotId] The ID of the snapshot used to create the custom image.
  GetImagesImageDiskDeviceMapping({
    required this.device,
    required this.size,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': device,
      'size': size,
      'snapshotId': snapshotId,
    };
  }

  factory GetImagesImageDiskDeviceMapping.fromMap(Map<String, dynamic> map) {
    return GetImagesImageDiskDeviceMapping(
      device: map['device'] as String,
      size: map['size'] as String,
      snapshotId: map['snapshotId'] as String,
    );
  }
}

