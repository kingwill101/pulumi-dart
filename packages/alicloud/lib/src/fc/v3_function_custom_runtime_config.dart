// ignore_for_file: unused_element, unnecessary_cast

import 'v3_function_custom_runtime_config_health_check_config.dart';

class V3FunctionCustomRuntimeConfig {
  /// Instance startup parameters.
  final List<String>? args;
  /// Instance start command.
  final List<String>? commands;
  /// Function custom health check configuration. See `health_check_config` below.
  final V3FunctionCustomRuntimeConfigHealthCheckConfig? healthCheckConfig;
  /// The listening port of the HTTP Server.
  final int? port;

  /// Creates a new [V3FunctionCustomRuntimeConfig].
  /// [args] Instance startup parameters.
  /// [commands] Instance start command.
  /// [healthCheckConfig] Function custom health check configuration. See `health_check_config` below.
  /// [port] The listening port of the HTTP Server.
  V3FunctionCustomRuntimeConfig({
    this.args,
    this.commands,
    this.healthCheckConfig,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'healthCheckConfig': ?healthCheckConfig == null ? null : healthCheckConfig!.toMap(),
      'port': ?port,
    };
  }

  factory V3FunctionCustomRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomRuntimeConfig(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      healthCheckConfig: map['healthCheckConfig'] == null ? null : V3FunctionCustomRuntimeConfigHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

