// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config.dart';
import 'agentcore_evaluator_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_evaluator_agentcore_evaluator_args_doc}
/// The set of arguments for AgentcoreEvaluator.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_evaluator_agentcore_evaluator_args_doc}
class AgentcoreEvaluatorArgs {
  /// Description of the evaluator. Length 1–200.
  final pulumi.Input<String?>? description;
  /// Configuration that defines how the evaluator assesses agent performance. See `evaluatorConfig` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfig> evaluatorConfig;
  /// Name of the evaluator. Must match the pattern `^[a-zA-Z][a-zA-Z0-9_]{0,47}$`.
  final pulumi.Input<String> evaluatorName;
  /// ARN of a customer-managed KMS key used to encrypt the evaluator's sensitive data. Only symmetric encryption keys are supported.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Evaluation level that determines the scope of evaluation. Valid values: `TOOL_CALL`, `TRACE`, `SESSION`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> level;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AgentcoreEvaluatorTimeouts?>? timeouts;

  /// Creates a new [AgentcoreEvaluatorArgs].
  /// [description] Description of the evaluator. Length 1–200.
  /// [evaluatorConfig] Configuration that defines how the evaluator assesses agent performance. See `evaluatorConfig` below.
  /// [evaluatorName] Name of the evaluator. Must match the pattern `^[a-zA-Z][a-zA-Z0-9_]{0,47}$`.
  /// [kmsKeyArn] ARN of a customer-managed KMS key used to encrypt the evaluator's sensitive data. Only symmetric encryption keys are supported.
  /// [level] Evaluation level that determines the scope of evaluation. Valid values: `TOOL_CALL`, `TRACE`, `SESSION`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentcoreEvaluatorArgs({
    this.description,
    required this.evaluatorConfig,
    required this.evaluatorName,
    this.kmsKeyArn,
    required this.level,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'evaluatorConfig': pulumi.Input.mapInputValue<AgentcoreEvaluatorEvaluatorConfig, Map<String, dynamic>>(evaluatorConfig, (value) => value.toMap()),
      'evaluatorName': evaluatorName,
      'kmsKeyArn': ?kmsKeyArn,
      'level': level,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreEvaluatorArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluatorConfig: pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfig.fromMap((map['evaluatorConfig']! as Map).cast<String, dynamic>())),
      evaluatorName: pulumi.Input.fromValue(map['evaluatorName'] as String),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: pulumi.Input.fromValue(map['level'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
