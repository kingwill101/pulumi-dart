// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diff_disk_settings_response.dart';
import 'managed_disk_response.dart';

/// Settings for the operating system disk of the virtual machine.
class OSDiskResponse {
  /// The type of caching to enable for the disk.
  final pulumi.Input<String>? caching;
  /// The initial disk size in GB when creating new OS disk.
  final pulumi.Input<int>? diskSizeGB;
  /// Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  final pulumi.Input<DiffDiskSettingsResponse>? ephemeralOSDiskSettings;
  final pulumi.Input<ManagedDiskResponse>? managedDisk;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

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
      'ephemeralOSDiskSettings': ?pulumi.Input.mapOptionalInputValue<DiffDiskSettingsResponse, Map<String, dynamic>>(ephemeralOSDiskSettings, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDiskResponse, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OSDiskResponse.fromMap(Map<String, dynamic> map) {
    return OSDiskResponse(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ephemeralOSDiskSettings: (() { final guardedValue = map['ephemeralOSDiskSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiffDiskSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDiskResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

