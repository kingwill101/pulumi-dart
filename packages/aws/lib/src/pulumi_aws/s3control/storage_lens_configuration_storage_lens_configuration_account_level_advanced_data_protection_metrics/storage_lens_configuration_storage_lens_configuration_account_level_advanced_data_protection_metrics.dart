// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics {
  /// Whether advanced data-protection metrics are enabled.
  final bool? enabled;

  StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics({
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

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
