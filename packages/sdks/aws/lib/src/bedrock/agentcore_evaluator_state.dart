// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config.dart';
import 'agentcore_evaluator_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreEvaluator resources.
class AgentcoreEvaluatorState {
  /// Timestamp when the evaluator was created.
  final pulumi.Input<String?>? createdAt;
  /// Description of the evaluator. Length 1–200.
  final pulumi.Input<String?>? description;
  /// ARN of the evaluator.
  final pulumi.Input<String?>? evaluatorArn;
  /// Configuration that defines how the evaluator assesses agent performance. See `evaluatorConfig` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfig?>? evaluatorConfig;
  /// Unique identifier of the evaluator.
  final pulumi.Input<String?>? evaluatorId;
  /// Name of the evaluator. Must match the pattern `^[a-zA-Z][a-zA-Z0-9_]{0,47}$`.
  final pulumi.Input<String?>? evaluatorName;
  /// ARN of a customer-managed KMS key used to encrypt the evaluator's sensitive data. Only symmetric encryption keys are supported.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Evaluation level that determines the scope of evaluation. Valid values: `TOOL_CALL`, `TRACE`, `SESSION`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? level;
  /// Whether the evaluator is locked because it is in use by an active online evaluation.
  final pulumi.Input<bool?>? lockedForModification;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Current status of the evaluator.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<AgentcoreEvaluatorTimeouts?>? timeouts;

  /// Creates a new [AgentcoreEvaluatorState].
  /// [createdAt] Timestamp when the evaluator was created.
  /// [description] Description of the evaluator. Length 1–200.
  /// [evaluatorArn] ARN of the evaluator.
  /// [evaluatorConfig] Configuration that defines how the evaluator assesses agent performance. See `evaluatorConfig` below.
  /// [evaluatorId] Unique identifier of the evaluator.
  /// [evaluatorName] Name of the evaluator. Must match the pattern `^[a-zA-Z][a-zA-Z0-9_]{0,47}$`.
  /// [kmsKeyArn] ARN of a customer-managed KMS key used to encrypt the evaluator's sensitive data. Only symmetric encryption keys are supported.
  /// [level] Evaluation level that determines the scope of evaluation. Valid values: `TOOL_CALL`, `TRACE`, `SESSION`.
  /// [lockedForModification] Whether the evaluator is locked because it is in use by an active online evaluation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current status of the evaluator.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AgentcoreEvaluatorState({
    this.createdAt,
    this.description,
    this.evaluatorArn,
    this.evaluatorConfig,
    this.evaluatorId,
    this.evaluatorName,
    this.kmsKeyArn,
    this.level,
    this.lockedForModification,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'evaluatorArn': ?evaluatorArn,
      'evaluatorConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorEvaluatorConfig, Map<String, dynamic>>(evaluatorConfig, (value) => value.toMap()),
      'evaluatorId': ?evaluatorId,
      'evaluatorName': ?evaluatorName,
      'kmsKeyArn': ?kmsKeyArn,
      'level': ?level,
      'lockedForModification': ?lockedForModification,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreEvaluatorState.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluatorArn: (() { final guardedValue = map['evaluatorArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluatorConfig: (() { final guardedValue = map['evaluatorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evaluatorId: (() { final guardedValue = map['evaluatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluatorName: (() { final guardedValue = map['evaluatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lockedForModification: (() { final guardedValue = map['lockedForModification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
