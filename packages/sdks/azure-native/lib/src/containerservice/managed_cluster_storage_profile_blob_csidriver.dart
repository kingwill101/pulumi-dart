// ignore_for_file: unused_element, unnecessary_cast


/// AzureBlob CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileBlobCSIDriver {
  /// Whether to enable AzureBlob CSI Driver. The default value is false.
  final bool? enabled;

  /// Creates a new [ManagedClusterStorageProfileBlobCSIDriver].
  /// [enabled] Whether to enable AzureBlob CSI Driver. The default value is false.
  ManagedClusterStorageProfileBlobCSIDriver({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileBlobCSIDriver.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileBlobCSIDriver(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

