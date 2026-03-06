// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureFile CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileFileCSIDriver {
  /// Whether to enable AzureFile CSI Driver. The default value is true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStorageProfileFileCSIDriver].
  /// [enabled] Whether to enable AzureFile CSI Driver. The default value is true.
  const ManagedClusterStorageProfileFileCSIDriver({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileFileCSIDriver.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileFileCSIDriver(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

