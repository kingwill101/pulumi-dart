// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_initial_capacity_initial_capacity_config.dart';

class ApplicationInitialCapacity {
  /// The initial capacity configuration per worker.
  final pulumi.Input<ApplicationInitialCapacityInitialCapacityConfig>? initialCapacityConfig;
  /// The worker type for an analytics framework. For Spark applications, the key can either be set to `Driver` or `Executor`. For Hive applications, it can be set to `HiveDriver` or `TezTask`.
  final pulumi.Input<String> initialCapacityType;

  /// Creates a new [ApplicationInitialCapacity].
  /// [initialCapacityConfig] The initial capacity configuration per worker.
  /// [initialCapacityType] The worker type for an analytics framework. For Spark applications, the key can either be set to `Driver` or `Executor`. For Hive applications, it can be set to `HiveDriver` or `TezTask`.
  ApplicationInitialCapacity({
    this.initialCapacityConfig,
    required this.initialCapacityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialCapacityConfig': ?pulumi.Input.mapOptionalInputValue<ApplicationInitialCapacityInitialCapacityConfig, Map<String, dynamic>>(initialCapacityConfig, (value) => value.toMap()),
      'initialCapacityType': initialCapacityType,
    };
  }

  factory ApplicationInitialCapacity.fromMap(Map<String, dynamic> map) {
    return ApplicationInitialCapacity(
      initialCapacityConfig: (() { final guardedValue = map['initialCapacityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationInitialCapacityInitialCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialCapacityType: pulumi.Input.fromValue(map['initialCapacityType'] as String),
    );
  }
}

