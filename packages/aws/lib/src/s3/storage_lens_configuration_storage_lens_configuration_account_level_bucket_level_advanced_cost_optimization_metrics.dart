// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics {
  /// Whether advanced cost-optimization metrics are enabled.
  final bool? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics].
  /// [enabled] Whether advanced cost-optimization metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics({
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

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
