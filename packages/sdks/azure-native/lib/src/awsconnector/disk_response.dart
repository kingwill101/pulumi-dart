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
  const DiskResponse({
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
      attachedTo: (() { final guardedValue = map['attachedTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentState: (() { final guardedValue = map['attachmentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isSystemDisk: (() { final guardedValue = map['isSystemDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGb: (() { final guardedValue = map['sizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

