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
  const RestorePointSourceVMOSDiskResponse({
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
      caching: pulumi.Input.fromValue(map['caching'] as String),
      diskRestorePoint: (() { final guardedValue = map['diskRestorePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskRestorePointAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGB: pulumi.Input.fromValue(map['diskSizeGB'] as int),
      encryptionSettings: pulumi.Input.fromValue(DiskEncryptionSettingsResponse.fromMap((map['encryptionSettings']! as Map).cast<String, dynamic>())),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDiskParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      writeAcceleratorEnabled: pulumi.Input.fromValue(map['writeAcceleratorEnabled'] as bool),
    );
  }
}
