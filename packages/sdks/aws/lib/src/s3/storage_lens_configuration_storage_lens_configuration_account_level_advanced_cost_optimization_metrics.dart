// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics {
  /// Whether advanced cost-optimization metrics are enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics].
  /// [enabled] Whether advanced cost-optimization metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
    );
  }
}

