// ignore_for_file: unused_element, unnecessary_cast

import 'execution_config_response_dataproc_v1.dart';
import 'peripherals_config_response.dart';

/// Environment configuration for a workload.
class EnvironmentConfigResponseDataprocV1 {
  /// Optional. Execution configuration for a workload.
  final ExecutionConfigResponseDataprocV1 executionConfig;

  /// Optional. Peripherals configuration that workload has access to.
  final PeripheralsConfigResponse peripheralsConfig;

  EnvironmentConfigResponseDataprocV1({
    required this.executionConfig,
    required this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionConfig'] = executionConfig.toMap();
    map['peripheralsConfig'] = peripheralsConfig.toMap();
    return map;
  }

  factory EnvironmentConfigResponseDataprocV1.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigResponseDataprocV1(
      executionConfig: ExecutionConfigResponseDataprocV1.fromMap(
          (map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: PeripheralsConfigResponse.fromMap(
          (map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
