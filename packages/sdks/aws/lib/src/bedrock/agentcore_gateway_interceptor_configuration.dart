// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_interceptor_configuration_input_configuration.dart';
import 'agentcore_gateway_interceptor_configuration_interceptor.dart';

class AgentcoreGatewayInterceptorConfiguration {
  /// Input configuration for the interceptor. See `inputConfiguration` below.
  final pulumi.Input<AgentcoreGatewayInterceptorConfigurationInputConfiguration>? inputConfiguration;
  /// Set of interception points. Valid values: `REQUEST`, `RESPONSE`.
  final pulumi.Input<List<String>> interceptionPoints;
  /// Interceptor infrastructure configuration. See `interceptor` below.
  final pulumi.Input<AgentcoreGatewayInterceptorConfigurationInterceptor>? interceptor;

  /// Creates a new [AgentcoreGatewayInterceptorConfiguration].
  /// [inputConfiguration] Input configuration for the interceptor. See `inputConfiguration` below.
  /// [interceptionPoints] Set of interception points. Valid values: `REQUEST`, `RESPONSE`.
  /// [interceptor] Interceptor infrastructure configuration. See `interceptor` below.
  const AgentcoreGatewayInterceptorConfiguration({
    this.inputConfiguration,
    required this.interceptionPoints,
    this.interceptor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayInterceptorConfigurationInputConfiguration, Map<String, dynamic>>(inputConfiguration, (value) => value.toMap()),
      'interceptionPoints': interceptionPoints,
      'interceptor': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayInterceptorConfigurationInterceptor, Map<String, dynamic>>(interceptor, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayInterceptorConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfiguration(
      inputConfiguration: (() { final guardedValue = map['inputConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayInterceptorConfigurationInputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interceptionPoints: pulumi.Input.fromValue((map['interceptionPoints'] as List).cast<String>()),
      interceptor: (() { final guardedValue = map['interceptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayInterceptorConfigurationInterceptor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
