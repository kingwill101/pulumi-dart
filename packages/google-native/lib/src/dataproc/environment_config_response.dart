// ignore_for_file: unused_element, unnecessary_cast

import 'execution_config_response.dart';
import 'peripherals_config_response.dart';

/// Environment configuration for a workload.
class EnvironmentConfigResponse {
  /// Optional. Execution configuration for a workload.
  final ExecutionConfigResponse executionConfig;
  /// Optional. Peripherals configuration that workload has access to.
  final PeripheralsConfigResponse peripheralsConfig;

  /// Creates a new [EnvironmentConfigResponse].
  /// [executionConfig] Optional. Execution configuration for a workload.
  /// [peripheralsConfig] Optional. Peripherals configuration that workload has access to.
  EnvironmentConfigResponse({
    required this.executionConfig,
    required this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionConfig': executionConfig.toMap(),
      'peripheralsConfig': peripheralsConfig.toMap(),
    };
  }

  factory EnvironmentConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigResponse(
      executionConfig: ExecutionConfigResponse.fromMap((map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: PeripheralsConfigResponse.fromMap((map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

