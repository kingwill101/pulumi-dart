// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics {
  /// Whether advanced data-protection metrics are enabled.
  final bool? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics].
  /// [enabled] Whether advanced data-protection metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
