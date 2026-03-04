// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_custom_runtime_config_health_check_config.dart';

class V3FunctionCustomRuntimeConfig {
  /// Instance startup parameters.
  final pulumi.Input<List<String>>? args;

  /// Instance start command.
  final pulumi.Input<List<String>>? commands;

  /// Function custom health check configuration. See `health_check_config` below.
  final pulumi.Input<V3FunctionCustomRuntimeConfigHealthCheckConfig>?
  healthCheckConfig;

  /// The listening port of the HTTP Server.
  final pulumi.Input<int>? port;

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
      'healthCheckConfig':
          ?pulumi.Input.mapOptionalInputValue<
            V3FunctionCustomRuntimeConfigHealthCheckConfig,
            Map<String, dynamic>
          >(healthCheckConfig, (value) => value.toMap()),
      'port': ?port,
    };
  }

  factory V3FunctionCustomRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomRuntimeConfig(
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      commands: (() {
        final guardedValue = map['commands'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      healthCheckConfig: (() {
        final guardedValue = map['healthCheckConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V3FunctionCustomRuntimeConfigHealthCheckConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
