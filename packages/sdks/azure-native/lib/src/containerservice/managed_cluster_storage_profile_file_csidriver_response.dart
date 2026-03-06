// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureFile CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileFileCSIDriverResponse {
  /// Whether to enable AzureFile CSI Driver. The default value is true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStorageProfileFileCSIDriverResponse].
  /// [enabled] Whether to enable AzureFile CSI Driver. The default value is true.
  const ManagedClusterStorageProfileFileCSIDriverResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileFileCSIDriverResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileFileCSIDriverResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

