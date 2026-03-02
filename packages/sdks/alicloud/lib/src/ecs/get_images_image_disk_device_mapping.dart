// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImageDiskDeviceMapping {
  /// The device information of the created disk: such as /dev/xvdb.
  final pulumi.Input<String> device;
  /// The size of the created disk.
  final pulumi.Input<String> size;
  /// The ID of the snapshot used to create the custom image.
  final pulumi.Input<String> snapshotId;

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
      device: (map['device'] as String).input(),
      size: (map['size'] as String).input(),
      snapshotId: (map['snapshotId'] as String).input(),
    );
  }
}

