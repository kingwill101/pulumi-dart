// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics {
  /// Whether advanced cost-optimization metrics are enabled.
  final bool? enabled;

  StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics({
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

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
