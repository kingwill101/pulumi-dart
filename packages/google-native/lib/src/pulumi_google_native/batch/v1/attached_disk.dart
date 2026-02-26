// ignore_for_file: unused_element, unnecessary_cast

import 'disk.dart';

/// A new or an existing persistent disk (PD) or a local ssd attached to a VM instance.
class AttachedDisk {
  /// Device name that the guest operating system will see. It is used by Runnable.volumes field to mount disks. So please specify the device_name if you want Batch to help mount the disk, and it should match the device_name field in volumes.
  final String? deviceName;

  /// Name of an existing PD.
  final String? existingDisk;
  final Disk? newDisk;

  AttachedDisk({
    this.deviceName,
    this.existingDisk,
    this.newDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final existingDiskValue = existingDisk;
    if (existingDiskValue != null) {
      map['existingDisk'] = existingDiskValue;
    }
    final newDiskValue = newDisk;
    if (newDiskValue != null) {
      map['newDisk'] = newDiskValue.toMap();
    }
    return map;
  }

  factory AttachedDisk.fromMap(Map<String, dynamic> map) {
    return AttachedDisk(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      existingDisk:
          map['existingDisk'] == null ? null : map['existingDisk'] as String,
      newDisk: map['newDisk'] == null
          ? null
          : Disk.fromMap((map['newDisk'] as Map).cast<String, dynamic>()),
    );
  }
}
