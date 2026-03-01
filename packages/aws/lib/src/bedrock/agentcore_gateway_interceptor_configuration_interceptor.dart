// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_interceptor_configuration_interceptor_lambda.dart';

class AgentcoreGatewayInterceptorConfigurationInterceptor {
  /// Lambda function configuration for the interceptor. See `lambda` below.
  final AgentcoreGatewayInterceptorConfigurationInterceptorLambda? lambda;

  /// Creates a new [AgentcoreGatewayInterceptorConfigurationInterceptor].
  /// [lambda] Lambda function configuration for the interceptor. See `lambda` below.
  AgentcoreGatewayInterceptorConfigurationInterceptor({this.lambda});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambda': ?lambda == null ? null : lambda!.toMap(),
    };
  }

  factory AgentcoreGatewayInterceptorConfigurationInterceptor.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayInterceptorConfigurationInterceptor(
      lambda: map['lambda'] == null
          ? null
          : AgentcoreGatewayInterceptorConfigurationInterceptorLambda.fromMap(
              (map['lambda'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
