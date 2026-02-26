// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_interceptor_configuration_input_configuration/agentcore_gateway_interceptor_configuration_input_configuration.dart';
import '../agentcore_gateway_interceptor_configuration_interceptor/agentcore_gateway_interceptor_configuration_interceptor.dart';

class AgentcoreGatewayInterceptorConfiguration {
  /// Input configuration for the interceptor. See <span pulumi-lang-nodejs="`inputConfiguration`" pulumi-lang-dotnet="`InputConfiguration`" pulumi-lang-go="`inputConfiguration`" pulumi-lang-python="`input_configuration`" pulumi-lang-yaml="`inputConfiguration`" pulumi-lang-java="`inputConfiguration`">`input_configuration`</span> below.
  final AgentcoreGatewayInterceptorConfigurationInputConfiguration?
      inputConfiguration;

  /// Set of interception points. Valid values: `REQUEST`, `RESPONSE`.
  final List<String> interceptionPoints;

  /// Interceptor infrastructure configuration. See <span pulumi-lang-nodejs="`interceptor`" pulumi-lang-dotnet="`Interceptor`" pulumi-lang-go="`interceptor`" pulumi-lang-python="`interceptor`" pulumi-lang-yaml="`interceptor`" pulumi-lang-java="`interceptor`">`interceptor`</span> below.
  final AgentcoreGatewayInterceptorConfigurationInterceptor? interceptor;

  AgentcoreGatewayInterceptorConfiguration({
    this.inputConfiguration,
    required this.interceptionPoints,
    this.interceptor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputConfigurationValue = inputConfiguration;
    if (inputConfigurationValue != null) {
      map['inputConfiguration'] = inputConfigurationValue.toMap();
    }
    map['interceptionPoints'] = interceptionPoints;
    final interceptorValue = interceptor;
    if (interceptorValue != null) {
      map['interceptor'] = interceptorValue.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayInterceptorConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfiguration(
      inputConfiguration: map['inputConfiguration'] == null
          ? null
          : AgentcoreGatewayInterceptorConfigurationInputConfiguration.fromMap(
              (map['inputConfiguration'] as Map).cast<String, dynamic>()),
      interceptionPoints: (map['interceptionPoints'] as List).cast<String>(),
      interceptor: map['interceptor'] == null
          ? null
          : AgentcoreGatewayInterceptorConfigurationInterceptor.fromMap(
              (map['interceptor'] as Map).cast<String, dynamic>()),
    );
  }
}
