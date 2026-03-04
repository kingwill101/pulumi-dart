// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_functions_function_custom_runtime_config_health_check_config.dart';

class GetV3FunctionsFunctionCustomRuntimeConfig {
  /// Instance startup parameters.
  final pulumi.Input<List<String>> args;

  /// Lifecycle Initialization Phase Callback Instructions.
  final pulumi.Input<List<String>> commands;

  /// Function custom health check configuration.
  final pulumi.Input<GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig>
  healthCheckConfig;

  /// The listening port of the HTTP Server.
  final pulumi.Input<int> port;

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
      'healthCheckConfig':
          pulumi.Input.mapInputValue<
            GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig,
            Map<String, dynamic>
          >(healthCheckConfig, (value) => value.toMap()),
      'port': port,
    };
  }

  factory GetV3FunctionsFunctionCustomRuntimeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetV3FunctionsFunctionCustomRuntimeConfig(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue(
        (map['commands'] as List).cast<String>(),
      ),
      healthCheckConfig: pulumi.Input.fromValue(
        GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig.fromMap(
          (map['healthCheckConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
