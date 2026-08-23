// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the parameters of ephemeral disk settings that can be specified for operating system disk. Note: The ephemeral disk settings can only be specified for managed disk.
class DiffDiskSettings {
  /// Specifies the ephemeral disk settings for operating system disk.
  final pulumi.Input<String>? option;
  /// Specifies the ephemeral disk placement for operating system disk. Possible values are: CacheDisk, ResourceDisk, NvmeDisk. The defaulting behavior is: CacheDisk if one is configured for the VM size otherwise ResourceDisk or NvmeDisk is used. Minimum api-version for NvmeDisk: 2024-03-01.
  final pulumi.Input<String>? placement;

  /// Creates a new [DiffDiskSettings].
  /// [option] Specifies the ephemeral disk settings for operating system disk.
  /// [placement] Specifies the ephemeral disk placement for operating system disk. Possible values are: CacheDisk, ResourceDisk, NvmeDisk. The defaulting behavior is: CacheDisk if one is configured for the VM size otherwise ResourceDisk or NvmeDisk is used. Minimum api-version for NvmeDisk: 2024-03-01.
  const DiffDiskSettings({
    this.option,
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': ?option,
      'placement': ?placement,
    };
  }

  factory DiffDiskSettings.fromMap(Map<String, dynamic> map) {
    return DiffDiskSettings(
      option: (() { final guardedValue = map['option']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
