// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_interceptor_configuration_interceptor_lambda/agentcore_gateway_interceptor_configuration_interceptor_lambda.dart';

class AgentcoreGatewayInterceptorConfigurationInterceptor {
  /// Lambda function configuration for the interceptor. See <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span> below.
  final AgentcoreGatewayInterceptorConfigurationInterceptorLambda? lambda;

  AgentcoreGatewayInterceptorConfigurationInterceptor({
    this.lambda,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lambdaValue = lambda;
    if (lambdaValue != null) {
      map['lambda'] = lambdaValue.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayInterceptorConfigurationInterceptor.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfigurationInterceptor(
      lambda: map['lambda'] == null
          ? null
          : AgentcoreGatewayInterceptorConfigurationInterceptorLambda.fromMap(
              (map['lambda'] as Map).cast<String, dynamic>()),
    );
  }
}
