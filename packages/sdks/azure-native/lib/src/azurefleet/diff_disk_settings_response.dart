// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the parameters of ephemeral disk settings that can be specified for
/// operating system disk. **Note:** The ephemeral disk settings can only be
/// specified for managed disk.
class DiffDiskSettingsResponse {
  /// Specifies the ephemeral disk settings for operating system disk.
  final pulumi.Input<String>? option;
  /// Specifies the ephemeral disk placement for operating system disk. Possible
  /// values are: **CacheDisk,** **ResourceDisk.** The defaulting behavior is:
  /// **CacheDisk** if one is configured for the VM size otherwise **ResourceDisk**
  /// is used. Refer to the VM size documentation for Windows VM at
  /// https://learn.microsoft.com/azure/virtual-machines/windows/sizes and Linux VM at
  /// https://learn.microsoft.com/azure/virtual-machines/linux/sizes to check which VM
  /// sizes exposes a cache disk.
  final pulumi.Input<String>? placement;

  /// Creates a new [DiffDiskSettingsResponse].
  /// [option] Specifies the ephemeral disk settings for operating system disk.
  /// [placement] Specifies the ephemeral disk placement for operating system disk. Possible
  const DiffDiskSettingsResponse({
    this.option,
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': ?option,
      'placement': ?placement,
    };
  }

  factory DiffDiskSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DiffDiskSettingsResponse(
      option: (() { final guardedValue = map['option']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
