// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureBlob CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileBlobCSIDriverResponse {
  /// Whether to enable AzureBlob CSI Driver. The default value is false.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStorageProfileBlobCSIDriverResponse].
  /// [enabled] Whether to enable AzureBlob CSI Driver. The default value is false.
  ManagedClusterStorageProfileBlobCSIDriverResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileBlobCSIDriverResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileBlobCSIDriverResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

