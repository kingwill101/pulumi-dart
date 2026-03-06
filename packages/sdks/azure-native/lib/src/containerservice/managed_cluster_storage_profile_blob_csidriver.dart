// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureBlob CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileBlobCSIDriver {
  /// Whether to enable AzureBlob CSI Driver. The default value is false.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStorageProfileBlobCSIDriver].
  /// [enabled] Whether to enable AzureBlob CSI Driver. The default value is false.
  const ManagedClusterStorageProfileBlobCSIDriver({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileBlobCSIDriver.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileBlobCSIDriver(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

