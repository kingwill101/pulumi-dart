// ignore_for_file: unused_element, unnecessary_cast


/// The redundancy Settings of a Vault
class VaultPropertiesResponseRedundancySettings {
  /// Flag to show if Cross Region Restore is enabled on the Vault or not
  final String? crossRegionRestore;
  /// The storage redundancy setting of a vault
  final String? standardTierStorageRedundancy;

  /// Creates a new [VaultPropertiesResponseRedundancySettings].
  /// [crossRegionRestore] Flag to show if Cross Region Restore is enabled on the Vault or not
  /// [standardTierStorageRedundancy] The storage redundancy setting of a vault
  VaultPropertiesResponseRedundancySettings({
    this.crossRegionRestore,
    this.standardTierStorageRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestore': ?crossRegionRestore,
      'standardTierStorageRedundancy': ?standardTierStorageRedundancy,
    };
  }

  factory VaultPropertiesResponseRedundancySettings.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponseRedundancySettings(
      crossRegionRestore: map['crossRegionRestore'] == null ? null : map['crossRegionRestore'] as String,
      standardTierStorageRedundancy: map['standardTierStorageRedundancy'] == null ? null : map['standardTierStorageRedundancy'] as String,
    );
  }
}

