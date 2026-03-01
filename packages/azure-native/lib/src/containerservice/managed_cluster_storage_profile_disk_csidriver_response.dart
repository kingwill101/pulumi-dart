// ignore_for_file: unused_element, unnecessary_cast


/// AzureDisk CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileDiskCSIDriverResponse {
  /// Whether to enable AzureDisk CSI Driver. The default value is true.
  final bool? enabled;

  /// Creates a new [ManagedClusterStorageProfileDiskCSIDriverResponse].
  /// [enabled] Whether to enable AzureDisk CSI Driver. The default value is true.
  ManagedClusterStorageProfileDiskCSIDriverResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileDiskCSIDriverResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileDiskCSIDriverResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

