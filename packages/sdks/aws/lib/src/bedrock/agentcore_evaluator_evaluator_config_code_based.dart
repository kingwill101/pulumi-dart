// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config_code_based_lambda_config.dart';

class AgentcoreEvaluatorEvaluatorConfigCodeBased {
  /// Lambda function configuration. See `lambdaConfig` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig>? lambdaConfig;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigCodeBased].
  /// [lambdaConfig] Lambda function configuration. See `lambdaConfig` below.
  const AgentcoreEvaluatorEvaluatorConfigCodeBased({
    this.lambdaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig, Map<String, dynamic>>(lambdaConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigCodeBased.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigCodeBased(
      lambdaConfig: (() { final guardedValue = map['lambdaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
