// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationLambdaFunction {
  /// The Amazon Resource Name (ARN) of the Lambda function to invoke.
  final String lambdaArn;

  AgentFlowDefinitionNodeConfigurationLambdaFunction({
    required this.lambdaArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationLambdaFunction.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationLambdaFunction(
      lambdaArn: map['lambdaArn'] as String,
    );
  }
}
