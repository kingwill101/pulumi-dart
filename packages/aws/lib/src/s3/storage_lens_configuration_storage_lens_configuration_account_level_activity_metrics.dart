// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics {
  /// Whether the activity metrics are enabled.
  final bool? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics].
  /// [enabled] Whether the activity metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics({
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

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
