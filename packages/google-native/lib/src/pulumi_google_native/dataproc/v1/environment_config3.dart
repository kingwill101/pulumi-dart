// ignore_for_file: unused_element, unnecessary_cast

import 'execution_config2.dart';
import 'peripherals_config.dart';

/// Environment configuration for a workload.
class EnvironmentConfig3 {
  /// Optional. Execution configuration for a workload.
  final ExecutionConfig2? executionConfig;

  /// Optional. Peripherals configuration that workload has access to.
  final PeripheralsConfig? peripheralsConfig;

  EnvironmentConfig3({
    this.executionConfig,
    this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executionConfigValue = executionConfig;
    if (executionConfigValue != null) {
      map['executionConfig'] = executionConfigValue.toMap();
    }
    final peripheralsConfigValue = peripheralsConfig;
    if (peripheralsConfigValue != null) {
      map['peripheralsConfig'] = peripheralsConfigValue.toMap();
    }
    return map;
  }

  factory EnvironmentConfig3.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfig3(
      executionConfig: map['executionConfig'] == null
          ? null
          : ExecutionConfig2.fromMap(
              (map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: map['peripheralsConfig'] == null
          ? null
          : PeripheralsConfig.fromMap(
              (map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
