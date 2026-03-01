// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_interceptor_configuration_input_configuration.dart';
import 'agentcore_gateway_interceptor_configuration_interceptor.dart';

class AgentcoreGatewayInterceptorConfiguration {
  /// Input configuration for the interceptor. See `input_configuration` below.
  final AgentcoreGatewayInterceptorConfigurationInputConfiguration?
  inputConfiguration;

  /// Set of interception points. Valid values: `REQUEST`, `RESPONSE`.
  final List<String> interceptionPoints;

  /// Interceptor infrastructure configuration. See `interceptor` below.
  final AgentcoreGatewayInterceptorConfigurationInterceptor? interceptor;

  /// Creates a new [AgentcoreGatewayInterceptorConfiguration].
  /// [inputConfiguration] Input configuration for the interceptor. See `input_configuration` below.
  /// [interceptionPoints] Set of interception points. Valid values: `REQUEST`, `RESPONSE`.
  /// [interceptor] Interceptor infrastructure configuration. See `interceptor` below.
  AgentcoreGatewayInterceptorConfiguration({
    this.inputConfiguration,
    required this.interceptionPoints,
    this.interceptor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputConfiguration': ?inputConfiguration == null
          ? null
          : inputConfiguration!.toMap(),
      'interceptionPoints': interceptionPoints,
      'interceptor': ?interceptor == null ? null : interceptor!.toMap(),
    };
  }

  factory AgentcoreGatewayInterceptorConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayInterceptorConfiguration(
      inputConfiguration: map['inputConfiguration'] == null
          ? null
          : AgentcoreGatewayInterceptorConfigurationInputConfiguration.fromMap(
              (map['inputConfiguration'] as Map).cast<String, dynamic>(),
            ),
      interceptionPoints: (map['interceptionPoints'] as List).cast<String>(),
      interceptor: map['interceptor'] == null
          ? null
          : AgentcoreGatewayInterceptorConfigurationInterceptor.fromMap(
              (map['interceptor'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
