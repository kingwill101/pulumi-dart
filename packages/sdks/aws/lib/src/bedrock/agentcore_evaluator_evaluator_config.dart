// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config_code_based.dart';
import 'agentcore_evaluator_evaluator_config_llm_as_ajudge.dart';

class AgentcoreEvaluatorEvaluatorConfig {
  /// Configuration that runs a Lambda function you provide to score the agent. See `codeBased` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfigCodeBased>? codeBased;
  /// Configuration that uses a Bedrock model to score the agent. See `llmAsAJudge` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge>? llmAsAJudge;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfig].
  /// [codeBased] Configuration that runs a Lambda function you provide to score the agent. See `codeBased` below.
  /// [llmAsAJudge] Configuration that uses a Bedrock model to score the agent. See `llmAsAJudge` below.
  const AgentcoreEvaluatorEvaluatorConfig({
    this.codeBased,
    this.llmAsAJudge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeBased': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorEvaluatorConfigCodeBased, Map<String, dynamic>>(codeBased, (value) => value.toMap()),
      'llmAsAJudge': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge, Map<String, dynamic>>(llmAsAJudge, (value) => value.toMap()),
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfig(
      codeBased: (() { final guardedValue = map['codeBased']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfigCodeBased.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      llmAsAJudge: (() { final guardedValue = map['llmAsAJudge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
