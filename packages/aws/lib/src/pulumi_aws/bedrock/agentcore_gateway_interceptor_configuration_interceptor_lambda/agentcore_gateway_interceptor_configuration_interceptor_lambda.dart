// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayInterceptorConfigurationInterceptorLambda {
  /// ARN of the Lambda function to invoke for the interceptor.
  final String arn;

  AgentcoreGatewayInterceptorConfigurationInterceptorLambda({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory AgentcoreGatewayInterceptorConfigurationInterceptorLambda.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfigurationInterceptorLambda(
      arn: map['arn'] as String,
    );
  }
}
