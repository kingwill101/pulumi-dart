// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'caching_type.dart';
import 'diff_disk_settings.dart';
import 'managed_disk.dart';

/// Settings for the operating system disk of the virtual machine.
class OSDisk {
  /// The type of caching to enable for the disk.
  final pulumi.Input<CachingType>? caching;
  /// The initial disk size in GB when creating new OS disk.
  final pulumi.Input<int>? diskSizeGB;
  /// Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  final pulumi.Input<DiffDiskSettings>? ephemeralOSDiskSettings;
  final pulumi.Input<ManagedDisk>? managedDisk;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [OSDisk].
  /// [caching] The type of caching to enable for the disk.
  /// [diskSizeGB] The initial disk size in GB when creating new OS disk.
  /// [ephemeralOSDiskSettings] Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  /// [managedDisk] Optional.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  OSDisk({
    this.caching,
    this.diskSizeGB,
    this.ephemeralOSDiskSettings,
    this.managedDisk,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?pulumi.Input.mapOptionalInputValue<CachingType, String>(caching, (value) => value.value),
      'diskSizeGB': ?diskSizeGB,
      'ephemeralOSDiskSettings': ?pulumi.Input.mapOptionalInputValue<DiffDiskSettings, Map<String, dynamic>>(ephemeralOSDiskSettings, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDisk, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OSDisk.fromMap(Map<String, dynamic> map) {
    return OSDisk(
      caching: map['caching'] == null ? null : (CachingType.fromValue(map['caching'] as String)).input(),
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB'] as int).input(),
      ephemeralOSDiskSettings: map['ephemeralOSDiskSettings'] == null ? null : (DiffDiskSettings.fromMap((map['ephemeralOSDiskSettings'] as Map).cast<String, dynamic>())).input(),
      managedDisk: map['managedDisk'] == null ? null : (ManagedDisk.fromMap((map['managedDisk'] as Map).cast<String, dynamic>())).input(),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : (map['writeAcceleratorEnabled'] as bool).input(),
    );
  }
}

