// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_restore_point_attributes_response.dart';
import 'managed_disk_parameters_response.dart';

/// Describes a data disk.
class RestorePointSourceVMDataDiskResponse {
  /// Gets the caching type.
  final pulumi.Input<String> caching;
  /// Contains Disk Restore Point properties.
  final pulumi.Input<DiskRestorePointAttributesResponse>? diskRestorePoint;
  /// Gets the initial disk size in GB for blank data disks, and the new desired size for existing OS and Data disks.
  final pulumi.Input<int> diskSizeGB;
  /// Gets the logical unit number.
  final pulumi.Input<int> lun;
  /// Contains the managed disk details.
  final pulumi.Input<ManagedDiskParametersResponse>? managedDisk;
  /// Gets the disk name.
  final pulumi.Input<String> name;
  /// Shows true if the disk is write-accelerator enabled.
  final pulumi.Input<bool> writeAcceleratorEnabled;

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
      'diskRestorePoint': ?pulumi.Input.mapOptionalInputValue<DiskRestorePointAttributesResponse, Map<String, dynamic>>(diskRestorePoint, (value) => value.toMap()),
      'diskSizeGB': diskSizeGB,
      'lun': lun,
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDiskParametersResponse, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'name': name,
      'writeAcceleratorEnabled': writeAcceleratorEnabled,
    };
  }

  factory RestorePointSourceVMDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMDataDiskResponse(
      caching: pulumi.Input.fromValue(map['caching'] as String),
      diskRestorePoint: (() { final guardedValue = map['diskRestorePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskRestorePointAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGB: pulumi.Input.fromValue(map['diskSizeGB'] as int),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDiskParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      writeAcceleratorEnabled: pulumi.Input.fromValue(map['writeAcceleratorEnabled'] as bool),
    );
  }
}

