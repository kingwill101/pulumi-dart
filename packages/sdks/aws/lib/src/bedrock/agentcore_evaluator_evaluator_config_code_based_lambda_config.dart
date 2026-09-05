// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig {
  /// ARN of the Lambda function that runs the evaluation.
  final pulumi.Input<String> lambdaArn;
  /// Time in seconds to wait for the Lambda function before timing out. Defaults to 60. Range 1–300.
  final pulumi.Input<int?>? lambdaTimeoutInSeconds;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig].
  /// [lambdaArn] ARN of the Lambda function that runs the evaluation.
  /// [lambdaTimeoutInSeconds] Time in seconds to wait for the Lambda function before timing out. Defaults to 60. Range 1–300.
  const AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig({
    required this.lambdaArn,
    this.lambdaTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
      'lambdaTimeoutInSeconds': ?lambdaTimeoutInSeconds,
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig(
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
      lambdaTimeoutInSeconds: (() { final guardedValue = map['lambdaTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
