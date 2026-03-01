// ignore_for_file: unused_element, unnecessary_cast


/// AzureFile CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileFileCSIDriver {
  /// Whether to enable AzureFile CSI Driver. The default value is true.
  final bool? enabled;

  /// Creates a new [ManagedClusterStorageProfileFileCSIDriver].
  /// [enabled] Whether to enable AzureFile CSI Driver. The default value is true.
  ManagedClusterStorageProfileFileCSIDriver({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileFileCSIDriver.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileFileCSIDriver(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

