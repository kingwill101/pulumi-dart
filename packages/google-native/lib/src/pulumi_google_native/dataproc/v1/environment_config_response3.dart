// ignore_for_file: unused_element, unnecessary_cast

import 'execution_config_response2.dart';
import 'peripherals_config_response.dart';

/// Environment configuration for a workload.
class EnvironmentConfigResponse3 {
  /// Optional. Execution configuration for a workload.
  final ExecutionConfigResponse2 executionConfig;

  /// Optional. Peripherals configuration that workload has access to.
  final PeripheralsConfigResponse peripheralsConfig;

  EnvironmentConfigResponse3({
    required this.executionConfig,
    required this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionConfig'] = executionConfig.toMap();
    map['peripheralsConfig'] = peripheralsConfig.toMap();
    return map;
  }

  factory EnvironmentConfigResponse3.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigResponse3(
      executionConfig: ExecutionConfigResponse2.fromMap(
          (map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: PeripheralsConfigResponse.fromMap(
          (map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
