// ignore_for_file: unused_element, unnecessary_cast

import 'disk_restore_point_attributes.dart';
import 'managed_disk_parameters.dart';

/// Describes an Operating System disk.
class RestorePointSourceVMOSDisk {
  /// Contains Disk Restore Point properties.
  final DiskRestorePointAttributes? diskRestorePoint;
  /// Gets the managed disk details
  final ManagedDiskParameters? managedDisk;

  /// Creates a new [RestorePointSourceVMOSDisk].
  /// [diskRestorePoint] Contains Disk Restore Point properties.
  /// [managedDisk] Gets the managed disk details
  RestorePointSourceVMOSDisk({
    this.diskRestorePoint,
    this.managedDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskRestorePoint': ?diskRestorePoint == null ? null : diskRestorePoint!.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
    };
  }

  factory RestorePointSourceVMOSDisk.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMOSDisk(
      diskRestorePoint: map['diskRestorePoint'] == null ? null : DiskRestorePointAttributes.fromMap((map['diskRestorePoint'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskParameters.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

