// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageDiskDeviceMapping {
  /// The device name of disk N in the custom image. Valid values:
  /// - For disks other than basic disks, such as standard SSDs, ultra disks, and enhanced SSDs (ESSDs), the valid values range from /dev/vda to /dev/vdz in alphabetical order.
  /// - For basic disks, the valid values range from /dev/xvda to /dev/xvdz in alphabetical order.
  final pulumi.Input<String>? device;

  /// The type of disk N in the custom image. You can specify this parameter to create the system disk of the custom image from a data disk snapshot. If you do not specify this parameter, the disk type is determined by the corresponding snapshot. Valid values:
  /// - system: system disk. You can specify only one snapshot to use to create the system disk in the custom image.
  /// - data: data disk. You can specify up to 16 snapshots to use to create data disks in the custom image.
  final pulumi.Input<String>? diskType;

  /// Image format.
  final pulumi.Input<String>? format;

  /// Import the bucket of the OSS to which the image belongs.
  final pulumi.Input<String>? importOssBucket;

  /// Import the object of the OSS to which the image file belongs.
  final pulumi.Input<String>? importOssObject;

  /// Copy the progress of the task.
  final pulumi.Input<String>? progress;

  /// For an image being replicated, return the remaining time of the replication task, in seconds.
  final pulumi.Input<int>? remainTime;

  /// The size of disk N in the custom image. Unit: GiB. The valid values and default value of DiskDeviceMapping.N.Size vary based on the value of DiskDeviceMapping.N.SnapshotId.
  /// - If no corresponding snapshot IDs are specified in the value of DiskDeviceMapping.N.SnapshotId, DiskDeviceMapping.N.Size has the following valid values and default values:
  /// *   For basic disks, the valid values range from 5 to 2000, and the default value is 5.
  /// *   For other disks, the valid values range from 20 to 32768, and the default value is 20.
  /// - If a corresponding snapshot ID is specified in the value of DiskDeviceMapping.N.SnapshotId, the value of DiskDeviceMapping.N.Size must be greater than or equal to the size of the specified snapshot. The default value of DiskDeviceMapping.N.Size is the size of the specified snapshot.
  final pulumi.Input<int>? size;

  /// The ID of snapshot N to use to create the custom image. .
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [ImageDiskDeviceMapping].
  /// [device] The device name of disk N in the custom image. Valid values:
  /// [diskType] The type of disk N in the custom image. You can specify this parameter to create the system disk of the custom image from a data disk snapshot. If you do not specify this parameter, the disk type is determined by the corresponding snapshot. Valid values:
  /// [format] Image format.
  /// [importOssBucket] Import the bucket of the OSS to which the image belongs.
  /// [importOssObject] Import the object of the OSS to which the image file belongs.
  /// [progress] Copy the progress of the task.
  /// [remainTime] For an image being replicated, return the remaining time of the replication task, in seconds.
  /// [size] The size of disk N in the custom image. Unit: GiB. The valid values and default value of DiskDeviceMapping.N.Size vary based on the value of DiskDeviceMapping.N.SnapshotId.
  /// [snapshotId] The ID of snapshot N to use to create the custom image. .
  ImageDiskDeviceMapping({
    this.device,
    this.diskType,
    this.format,
    this.importOssBucket,
    this.importOssObject,
    this.progress,
    this.remainTime,
    this.size,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'diskType': ?diskType,
      'format': ?format,
      'importOssBucket': ?importOssBucket,
      'importOssObject': ?importOssObject,
      'progress': ?progress,
      'remainTime': ?remainTime,
      'size': ?size,
      'snapshotId': ?snapshotId,
    };
  }

  factory ImageDiskDeviceMapping.fromMap(Map<String, dynamic> map) {
    return ImageDiskDeviceMapping(
      device: (() {
        final guardedValue = map['device'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      importOssBucket: (() {
        final guardedValue = map['importOssBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      importOssObject: (() {
        final guardedValue = map['importOssObject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      progress: (() {
        final guardedValue = map['progress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remainTime: (() {
        final guardedValue = map['remainTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
