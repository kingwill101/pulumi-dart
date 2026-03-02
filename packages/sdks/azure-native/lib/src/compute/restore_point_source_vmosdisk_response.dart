// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_settings_response.dart';
import 'disk_restore_point_attributes_response.dart';
import 'managed_disk_parameters_response.dart';

/// Describes an Operating System disk.
class RestorePointSourceVMOSDiskResponse {
  /// Gets the caching type.
  final pulumi.Input<String> caching;
  /// Contains Disk Restore Point properties.
  final pulumi.Input<DiskRestorePointAttributesResponse>? diskRestorePoint;
  /// Gets the disk size in GB.
  final pulumi.Input<int> diskSizeGB;
  /// Gets the disk encryption settings.
  final pulumi.Input<DiskEncryptionSettingsResponse> encryptionSettings;
  /// Gets the managed disk details
  final pulumi.Input<ManagedDiskParametersResponse>? managedDisk;
  /// Gets the disk name.
  final pulumi.Input<String> name;
  /// Gets the Operating System type.
  final pulumi.Input<String> osType;
  /// Shows true if the disk is write-accelerator enabled.
  final pulumi.Input<bool> writeAcceleratorEnabled;

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
      'diskRestorePoint': ?pulumi.Input.mapOptionalInputValue<DiskRestorePointAttributesResponse, Map<String, dynamic>>(diskRestorePoint, (value) => value.toMap()),
      'diskSizeGB': diskSizeGB,
      'encryptionSettings': pulumi.Input.mapInputValue<DiskEncryptionSettingsResponse, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDiskParametersResponse, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'name': name,
      'osType': osType,
      'writeAcceleratorEnabled': writeAcceleratorEnabled,
    };
  }

  factory RestorePointSourceVMOSDiskResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMOSDiskResponse(
      caching: (map['caching'] as String).input(),
      diskRestorePoint: map['diskRestorePoint'] == null ? null : (DiskRestorePointAttributesResponse.fromMap((map['diskRestorePoint']! as Map).cast<String, dynamic>())).input(),
      diskSizeGB: (map['diskSizeGB'] as int).input(),
      encryptionSettings: (DiskEncryptionSettingsResponse.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>())).input(),
      managedDisk: map['managedDisk'] == null ? null : (ManagedDiskParametersResponse.fromMap((map['managedDisk']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      osType: (map['osType'] as String).input(),
      writeAcceleratorEnabled: (map['writeAcceleratorEnabled'] as bool).input(),
    );
  }
}

