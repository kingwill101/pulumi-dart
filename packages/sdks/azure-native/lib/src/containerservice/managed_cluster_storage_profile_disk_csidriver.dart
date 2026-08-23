// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureDisk CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileDiskCSIDriver {
  /// Whether to enable AzureDisk CSI Driver. The default value is true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStorageProfileDiskCSIDriver].
  /// [enabled] Whether to enable AzureDisk CSI Driver. The default value is true.
  const ManagedClusterStorageProfileDiskCSIDriver({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileDiskCSIDriver.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileDiskCSIDriver(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
