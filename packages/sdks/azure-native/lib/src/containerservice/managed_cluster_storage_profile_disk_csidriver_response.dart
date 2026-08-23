// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureDisk CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileDiskCSIDriverResponse {
  /// Whether to enable AzureDisk CSI Driver. The default value is true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStorageProfileDiskCSIDriverResponse].
  /// [enabled] Whether to enable AzureDisk CSI Driver. The default value is true.
  const ManagedClusterStorageProfileDiskCSIDriverResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileDiskCSIDriverResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileDiskCSIDriverResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
