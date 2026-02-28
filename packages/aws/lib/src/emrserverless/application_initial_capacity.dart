// ignore_for_file: unused_element, unnecessary_cast

import 'application_initial_capacity_initial_capacity_config.dart';

class ApplicationInitialCapacity {
  /// The initial capacity configuration per worker.
  final ApplicationInitialCapacityInitialCapacityConfig? initialCapacityConfig;

  /// The worker type for an analytics framework. For Spark applications, the key can either be set to `Driver` or `Executor`. For Hive applications, it can be set to `HiveDriver` or `TezTask`.
  final String initialCapacityType;

  /// Creates a new [ApplicationInitialCapacity].
  /// [initialCapacityConfig] The initial capacity configuration per worker.
  /// [initialCapacityType] The worker type for an analytics framework. For Spark applications, the key can either be set to `Driver` or `Executor`. For Hive applications, it can be set to `HiveDriver` or `TezTask`.
  ApplicationInitialCapacity({
    this.initialCapacityConfig,
    required this.initialCapacityType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final initialCapacityConfigValue = initialCapacityConfig;
    if (initialCapacityConfigValue != null) {
      map['initialCapacityConfig'] = initialCapacityConfigValue.toMap();
    }
    map['initialCapacityType'] = initialCapacityType;
    return map;
  }

  factory ApplicationInitialCapacity.fromMap(Map<String, dynamic> map) {
    return ApplicationInitialCapacity(
      initialCapacityConfig: map['initialCapacityConfig'] == null
          ? null
          : ApplicationInitialCapacityInitialCapacityConfig.fromMap(
              (map['initialCapacityConfig'] as Map).cast<String, dynamic>()),
      initialCapacityType: map['initialCapacityType'] as String,
    );
  }
}
