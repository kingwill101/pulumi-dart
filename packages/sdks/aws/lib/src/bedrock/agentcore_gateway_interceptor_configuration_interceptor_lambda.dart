// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayInterceptorConfigurationInterceptorLambda {
  /// ARN of the Lambda function to invoke for the interceptor.
  final pulumi.Input<String> arn;

  /// Creates a new [AgentcoreGatewayInterceptorConfigurationInterceptorLambda].
  /// [arn] ARN of the Lambda function to invoke for the interceptor.
  AgentcoreGatewayInterceptorConfigurationInterceptorLambda({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory AgentcoreGatewayInterceptorConfigurationInterceptorLambda.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfigurationInterceptorLambda(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}

