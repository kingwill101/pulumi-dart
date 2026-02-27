// ignore_for_file: unused_element, unnecessary_cast

import 'execution_config_dataproc_v1.dart';
import 'peripherals_config.dart';

/// Environment configuration for a workload.
class EnvironmentConfigDataprocV1 {
  /// Optional. Execution configuration for a workload.
  final ExecutionConfigDataprocV1? executionConfig;

  /// Optional. Peripherals configuration that workload has access to.
  final PeripheralsConfig? peripheralsConfig;

  EnvironmentConfigDataprocV1({
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

  factory EnvironmentConfigDataprocV1.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigDataprocV1(
      executionConfig: map['executionConfig'] == null
          ? null
          : ExecutionConfigDataprocV1.fromMap(
              (map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: map['peripheralsConfig'] == null
          ? null
          : PeripheralsConfig.fromMap(
              (map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
