// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreGatewayInterceptorConfigurationInterceptorLambda {
  /// ARN of the Lambda function to invoke for the interceptor.
  final String arn;

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
      arn: map['arn'] as String,
    );
  }
}

