// ignore_for_file: unused_element, unnecessary_cast


/// The redundancy Settings of a Vault
class VaultPropertiesRedundancySettings {
  /// Flag to show if Cross Region Restore is enabled on the Vault or not
  final String? crossRegionRestore;
  /// The storage redundancy setting of a vault
  final String? standardTierStorageRedundancy;

  /// Creates a new [VaultPropertiesRedundancySettings].
  /// [crossRegionRestore] Flag to show if Cross Region Restore is enabled on the Vault or not
  /// [standardTierStorageRedundancy] The storage redundancy setting of a vault
  VaultPropertiesRedundancySettings({
    this.crossRegionRestore,
    this.standardTierStorageRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestore': ?crossRegionRestore,
      'standardTierStorageRedundancy': ?standardTierStorageRedundancy,
    };
  }

  factory VaultPropertiesRedundancySettings.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesRedundancySettings(
      crossRegionRestore: map['crossRegionRestore'] == null ? null : map['crossRegionRestore'] as String,
      standardTierStorageRedundancy: map['standardTierStorageRedundancy'] == null ? null : map['standardTierStorageRedundancy'] as String,
    );
  }
}

