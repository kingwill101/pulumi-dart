// ignore_for_file: unused_element, unnecessary_cast

import 'disk_restore_point_attributes.dart';
import 'managed_disk_parameters.dart';

/// Describes a data disk.
class RestorePointSourceVMDataDisk {
  /// Contains Disk Restore Point properties.
  final DiskRestorePointAttributes? diskRestorePoint;
  /// Contains the managed disk details.
  final ManagedDiskParameters? managedDisk;

  /// Creates a new [RestorePointSourceVMDataDisk].
  /// [diskRestorePoint] Contains Disk Restore Point properties.
  /// [managedDisk] Contains the managed disk details.
  RestorePointSourceVMDataDisk({
    this.diskRestorePoint,
    this.managedDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskRestorePoint': ?diskRestorePoint == null ? null : diskRestorePoint!.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
    };
  }

  factory RestorePointSourceVMDataDisk.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMDataDisk(
      diskRestorePoint: map['diskRestorePoint'] == null ? null : DiskRestorePointAttributes.fromMap((map['diskRestorePoint'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskParameters.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

