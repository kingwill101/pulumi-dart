// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics {
  /// Whether advanced data-protection metrics are enabled.
  final bool? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics].
  /// [enabled] Whether advanced data-protection metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
