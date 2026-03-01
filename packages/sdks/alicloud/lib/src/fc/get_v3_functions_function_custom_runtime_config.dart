// ignore_for_file: unused_element, unnecessary_cast

import 'get_v3_functions_function_custom_runtime_config_health_check_config.dart';

class GetV3FunctionsFunctionCustomRuntimeConfig {
  /// Instance startup parameters.
  final List<String> args;
  /// Lifecycle Initialization Phase Callback Instructions.
  final List<String> commands;
  /// Function custom health check configuration.
  final GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig healthCheckConfig;
  /// The listening port of the HTTP Server.
  final int port;

  /// Creates a new [GetV3FunctionsFunctionCustomRuntimeConfig].
  /// [args] Instance startup parameters.
  /// [commands] Lifecycle Initialization Phase Callback Instructions.
  /// [healthCheckConfig] Function custom health check configuration.
  /// [port] The listening port of the HTTP Server.
  GetV3FunctionsFunctionCustomRuntimeConfig({
    required this.args,
    required this.commands,
    required this.healthCheckConfig,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'healthCheckConfig': healthCheckConfig.toMap(),
      'port': port,
    };
  }

  factory GetV3FunctionsFunctionCustomRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionCustomRuntimeConfig(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      healthCheckConfig: GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] as int,
    );
  }
}

