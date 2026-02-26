// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics {
  /// Whether detailed status code metrics are enabled.
  final bool? enabled;

  StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics({
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

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
