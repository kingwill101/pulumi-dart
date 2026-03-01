// ignore_for_file: unused_element, unnecessary_cast

import 'diff_disk_settings_response.dart';
import 'managed_disk_response.dart';

/// Settings for the operating system disk of the virtual machine.
class OSDiskResponse {
  /// The type of caching to enable for the disk.
  final String? caching;
  /// The initial disk size in GB when creating new OS disk.
  final int? diskSizeGB;
  /// Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  final DiffDiskSettingsResponse? ephemeralOSDiskSettings;
  final ManagedDiskResponse? managedDisk;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final bool? writeAcceleratorEnabled;

  /// Creates a new [OSDiskResponse].
  /// [caching] The type of caching to enable for the disk.
  /// [diskSizeGB] The initial disk size in GB when creating new OS disk.
  /// [ephemeralOSDiskSettings] Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  /// [managedDisk] Optional.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  OSDiskResponse({
    this.caching,
    this.diskSizeGB,
    this.ephemeralOSDiskSettings,
    this.managedDisk,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'diskSizeGB': ?diskSizeGB,
      'ephemeralOSDiskSettings': ?ephemeralOSDiskSettings == null ? null : ephemeralOSDiskSettings!.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OSDiskResponse.fromMap(Map<String, dynamic> map) {
    return OSDiskResponse(
      caching: map['caching'] == null ? null : map['caching'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      ephemeralOSDiskSettings: map['ephemeralOSDiskSettings'] == null ? null : DiffDiskSettingsResponse.fromMap((map['ephemeralOSDiskSettings'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : map['writeAcceleratorEnabled'] as bool,
    );
  }
}

