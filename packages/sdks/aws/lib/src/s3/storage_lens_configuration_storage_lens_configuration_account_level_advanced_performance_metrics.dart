// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics {
  /// Whether advanced performance metrics are enabled.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics].
  /// [enabled] Whether advanced performance metrics are enabled.
  const StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
