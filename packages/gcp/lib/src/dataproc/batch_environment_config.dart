// ignore_for_file: unused_element, unnecessary_cast

import 'batch_environment_config_execution_config.dart';
import 'batch_environment_config_peripherals_config.dart';

class BatchEnvironmentConfig {
  /// Execution configuration for a workload.
  /// Structure is documented below.
  final BatchEnvironmentConfigExecutionConfig? executionConfig;

  /// Peripherals configuration that workload has access to.
  /// Structure is documented below.
  final BatchEnvironmentConfigPeripheralsConfig? peripheralsConfig;

  /// Creates a new [BatchEnvironmentConfig].
  /// [executionConfig] Execution configuration for a workload.
  /// [peripheralsConfig] Peripherals configuration that workload has access to.
  BatchEnvironmentConfig({this.executionConfig, this.peripheralsConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionConfig': ?executionConfig == null
          ? null
          : executionConfig!.toMap(),
      'peripheralsConfig': ?peripheralsConfig == null
          ? null
          : peripheralsConfig!.toMap(),
    };
  }

  factory BatchEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BatchEnvironmentConfig(
      executionConfig: map['executionConfig'] == null
          ? null
          : BatchEnvironmentConfigExecutionConfig.fromMap(
              (map['executionConfig'] as Map).cast<String, dynamic>(),
            ),
      peripheralsConfig: map['peripheralsConfig'] == null
          ? null
          : BatchEnvironmentConfigPeripheralsConfig.fromMap(
              (map['peripheralsConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
