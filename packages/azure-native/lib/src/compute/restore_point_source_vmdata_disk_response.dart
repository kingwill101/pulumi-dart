// ignore_for_file: unused_element, unnecessary_cast

import 'disk_restore_point_attributes_response.dart';
import 'managed_disk_parameters_response.dart';

/// Describes a data disk.
class RestorePointSourceVMDataDiskResponse {
  /// Gets the caching type.
  final String caching;
  /// Contains Disk Restore Point properties.
  final DiskRestorePointAttributesResponse? diskRestorePoint;
  /// Gets the initial disk size in GB for blank data disks, and the new desired size for existing OS and Data disks.
  final int diskSizeGB;
  /// Gets the logical unit number.
  final int lun;
  /// Contains the managed disk details.
  final ManagedDiskParametersResponse? managedDisk;
  /// Gets the disk name.
  final String name;
  /// Shows true if the disk is write-accelerator enabled.
  final bool writeAcceleratorEnabled;

  /// Creates a new [RestorePointSourceVMDataDiskResponse].
  /// [caching] Gets the caching type.
  /// [diskRestorePoint] Contains Disk Restore Point properties.
  /// [diskSizeGB] Gets the initial disk size in GB for blank data disks, and the new desired size for existing OS and Data disks.
  /// [lun] Gets the logical unit number.
  /// [managedDisk] Contains the managed disk details.
  /// [name] Gets the disk name.
  /// [writeAcceleratorEnabled] Shows true if the disk is write-accelerator enabled.
  RestorePointSourceVMDataDiskResponse({
    required this.caching,
    this.diskRestorePoint,
    required this.diskSizeGB,
    required this.lun,
    this.managedDisk,
    required this.name,
    required this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'diskRestorePoint': ?diskRestorePoint == null ? null : diskRestorePoint!.toMap(),
      'diskSizeGB': diskSizeGB,
      'lun': lun,
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'name': name,
      'writeAcceleratorEnabled': writeAcceleratorEnabled,
    };
  }

  factory RestorePointSourceVMDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMDataDiskResponse(
      caching: map['caching'] as String,
      diskRestorePoint: map['diskRestorePoint'] == null ? null : DiskRestorePointAttributesResponse.fromMap((map['diskRestorePoint'] as Map).cast<String, dynamic>()),
      diskSizeGB: map['diskSizeGB'] as int,
      lun: map['lun'] as int,
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskParametersResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] as bool,
    );
  }
}

