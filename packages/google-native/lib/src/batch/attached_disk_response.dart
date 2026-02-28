// ignore_for_file: unused_element, unnecessary_cast

import 'disk_response.dart';

/// A new or an existing persistent disk (PD) or a local ssd attached to a VM instance.
class AttachedDiskResponse {
  /// Device name that the guest operating system will see. It is used by Runnable.volumes field to mount disks. So please specify the device_name if you want Batch to help mount the disk, and it should match the device_name field in volumes.
  final String deviceName;

  /// Name of an existing PD.
  final String existingDisk;
  final DiskResponse newDisk;

  /// Creates a new [AttachedDiskResponse].
  /// [deviceName] Device name that the guest operating system will see. It is used by Runnable.volumes field to mount disks. So please specify the device_name if you want Batch to help mount the disk, and it should match the device_name field in volumes.
  /// [existingDisk] Name of an existing PD.
  /// [newDisk] Required.
  AttachedDiskResponse({
    required this.deviceName,
    required this.existingDisk,
    required this.newDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['existingDisk'] = existingDisk;
    map['newDisk'] = newDisk.toMap();
    return map;
  }

  factory AttachedDiskResponse.fromMap(Map<String, dynamic> map) {
    return AttachedDiskResponse(
      deviceName: map['deviceName'] as String,
      existingDisk: map['existingDisk'] as String,
      newDisk:
          DiskResponse.fromMap((map['newDisk'] as Map).cast<String, dynamic>()),
    );
  }
}
