// ignore_for_file: unused_element, unnecessary_cast


/// AzureFile CSI Driver settings for the storage profile.
class ManagedClusterStorageProfileFileCSIDriverResponse {
  /// Whether to enable AzureFile CSI Driver. The default value is true.
  final bool? enabled;

  /// Creates a new [ManagedClusterStorageProfileFileCSIDriverResponse].
  /// [enabled] Whether to enable AzureFile CSI Driver. The default value is true.
  ManagedClusterStorageProfileFileCSIDriverResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileFileCSIDriverResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileFileCSIDriverResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

