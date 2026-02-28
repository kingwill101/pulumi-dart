// ignore_for_file: unused_element, unnecessary_cast

import 'execution_config.dart';
import 'peripherals_config.dart';

/// Environment configuration for a workload.
class EnvironmentConfig {
  /// Optional. Execution configuration for a workload.
  final ExecutionConfig? executionConfig;
  /// Optional. Peripherals configuration that workload has access to.
  final PeripheralsConfig? peripheralsConfig;

  /// Creates a new [EnvironmentConfig].
  /// [executionConfig] Optional. Execution configuration for a workload.
  /// [peripheralsConfig] Optional. Peripherals configuration that workload has access to.
  EnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionConfig': ?executionConfig == null ? null : executionConfig!.toMap(),
      'peripheralsConfig': ?peripheralsConfig == null ? null : peripheralsConfig!.toMap(),
    };
  }

  factory EnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfig(
      executionConfig: map['executionConfig'] == null ? null : ExecutionConfig.fromMap((map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: map['peripheralsConfig'] == null ? null : PeripheralsConfig.fromMap((map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

