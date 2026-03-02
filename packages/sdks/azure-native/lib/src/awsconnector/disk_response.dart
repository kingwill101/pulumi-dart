// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Disk
class DiskResponse {
  /// Instance attached to the disk.
  final pulumi.Input<String>? attachedTo;
  /// Attachment state of the disk.
  final pulumi.Input<String>? attachmentState;
  /// The names to use for your new Lightsail disk.
  final pulumi.Input<String>? diskName;
  /// IOPS of disk.
  final pulumi.Input<int>? iops;
  /// Is the Attached disk is the system disk of the Instance.
  final pulumi.Input<bool>? isSystemDisk;
  /// Path of the disk attached to the instance.
  final pulumi.Input<String>? path;
  /// Size of the disk attached to the Instance.
  final pulumi.Input<String>? sizeInGb;

  /// Creates a new [DiskResponse].
  /// [attachedTo] Instance attached to the disk.
  /// [attachmentState] Attachment state of the disk.
  /// [diskName] The names to use for your new Lightsail disk.
  /// [iops] IOPS of disk.
  /// [isSystemDisk] Is the Attached disk is the system disk of the Instance.
  /// [path] Path of the disk attached to the instance.
  /// [sizeInGb] Size of the disk attached to the Instance.
  DiskResponse({
    this.attachedTo,
    this.attachmentState,
    this.diskName,
    this.iops,
    this.isSystemDisk,
    this.path,
    this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedTo': ?attachedTo,
      'attachmentState': ?attachmentState,
      'diskName': ?diskName,
      'iops': ?iops,
      'isSystemDisk': ?isSystemDisk,
      'path': ?path,
      'sizeInGb': ?sizeInGb,
    };
  }

  factory DiskResponse.fromMap(Map<String, dynamic> map) {
    return DiskResponse(
      attachedTo: map['attachedTo'] == null ? null : (map['attachedTo']! as String).input(),
      attachmentState: map['attachmentState'] == null ? null : (map['attachmentState']! as String).input(),
      diskName: map['diskName'] == null ? null : (map['diskName']! as String).input(),
      iops: map['iops'] == null ? null : (map['iops']! as int).input(),
      isSystemDisk: map['isSystemDisk'] == null ? null : (map['isSystemDisk']! as bool).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      sizeInGb: map['sizeInGb'] == null ? null : (map['sizeInGb']! as String).input(),
    );
  }
}

