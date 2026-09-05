// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationLambdaFunction {
  /// ARN of the Lambda function to invoke.
  final pulumi.Input<String> lambdaArn;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationLambdaFunction].
  /// [lambdaArn] ARN of the Lambda function to invoke.
  const AgentFlowDefinitionNodeConfigurationLambdaFunction({
    required this.lambdaArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationLambdaFunction.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationLambdaFunction(
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
    );
  }
}
