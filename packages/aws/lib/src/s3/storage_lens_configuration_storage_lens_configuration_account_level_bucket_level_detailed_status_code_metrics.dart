// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics {
  /// Whether detailed status code metrics are enabled.
  final bool? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics].
  /// [enabled] Whether detailed status code metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics({
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

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
