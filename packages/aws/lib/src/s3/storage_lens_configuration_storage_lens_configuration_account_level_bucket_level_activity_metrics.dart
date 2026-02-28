// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics {
  /// Whether the activity metrics are enabled.
  final bool? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics].
  /// [enabled] Whether the activity metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics({
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

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
