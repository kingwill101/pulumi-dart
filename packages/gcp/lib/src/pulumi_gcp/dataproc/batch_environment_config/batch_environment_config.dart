// ignore_for_file: unused_element, unnecessary_cast

import '../batch_environment_config_execution_config/batch_environment_config_execution_config.dart';
import '../batch_environment_config_peripherals_config/batch_environment_config_peripherals_config.dart';

class BatchEnvironmentConfig {
  /// Execution configuration for a workload.
  /// Structure is documented below.
  final BatchEnvironmentConfigExecutionConfig? executionConfig;

  /// Peripherals configuration that workload has access to.
  /// Structure is documented below.
  final BatchEnvironmentConfigPeripheralsConfig? peripheralsConfig;

  BatchEnvironmentConfig({
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

  factory BatchEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BatchEnvironmentConfig(
      executionConfig: map['executionConfig'] == null
          ? null
          : BatchEnvironmentConfigExecutionConfig.fromMap(
              (map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: map['peripheralsConfig'] == null
          ? null
          : BatchEnvironmentConfigPeripheralsConfig.fromMap(
              (map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
