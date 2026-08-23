// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedPerformanceMetrics {
  /// Whether advanced performance metrics are enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedPerformanceMetrics].
  /// [enabled] Whether advanced performance metrics are enabled.
  const StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedPerformanceMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedPerformanceMetrics.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedPerformanceMetrics(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
