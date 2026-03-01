// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_settings_response.dart';
import 'disk_restore_point_attributes_response.dart';
import 'managed_disk_parameters_response.dart';

/// Describes an Operating System disk.
class RestorePointSourceVMOSDiskResponse {
  /// Gets the caching type.
  final String caching;
  /// Contains Disk Restore Point properties.
  final DiskRestorePointAttributesResponse? diskRestorePoint;
  /// Gets the disk size in GB.
  final int diskSizeGB;
  /// Gets the disk encryption settings.
  final DiskEncryptionSettingsResponse encryptionSettings;
  /// Gets the managed disk details
  final ManagedDiskParametersResponse? managedDisk;
  /// Gets the disk name.
  final String name;
  /// Gets the Operating System type.
  final String osType;
  /// Shows true if the disk is write-accelerator enabled.
  final bool writeAcceleratorEnabled;

  /// Creates a new [RestorePointSourceVMOSDiskResponse].
  /// [caching] Gets the caching type.
  /// [diskRestorePoint] Contains Disk Restore Point properties.
  /// [diskSizeGB] Gets the disk size in GB.
  /// [encryptionSettings] Gets the disk encryption settings.
  /// [managedDisk] Gets the managed disk details
  /// [name] Gets the disk name.
  /// [osType] Gets the Operating System type.
  /// [writeAcceleratorEnabled] Shows true if the disk is write-accelerator enabled.
  RestorePointSourceVMOSDiskResponse({
    required this.caching,
    this.diskRestorePoint,
    required this.diskSizeGB,
    required this.encryptionSettings,
    this.managedDisk,
    required this.name,
    required this.osType,
    required this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'diskRestorePoint': ?diskRestorePoint == null ? null : diskRestorePoint!.toMap(),
      'diskSizeGB': diskSizeGB,
      'encryptionSettings': encryptionSettings.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'name': name,
      'osType': osType,
      'writeAcceleratorEnabled': writeAcceleratorEnabled,
    };
  }

  factory RestorePointSourceVMOSDiskResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMOSDiskResponse(
      caching: map['caching'] as String,
      diskRestorePoint: map['diskRestorePoint'] == null ? null : DiskRestorePointAttributesResponse.fromMap((map['diskRestorePoint'] as Map).cast<String, dynamic>()),
      diskSizeGB: map['diskSizeGB'] as int,
      encryptionSettings: DiskEncryptionSettingsResponse.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskParametersResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      osType: map['osType'] as String,
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] as bool,
    );
  }
}

