// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_online_evaluation_config_data_source_config.dart';
import 'agentcore_online_evaluation_config_evaluator.dart';
import 'agentcore_online_evaluation_config_rule.dart';
import 'agentcore_online_evaluation_config_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_online_evaluation_config_agentcore_online_evaluation_config_args_doc}
/// The set of arguments for AgentcoreOnlineEvaluationConfig.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_online_evaluation_config_agentcore_online_evaluation_config_args_doc}
class AgentcoreOnlineEvaluationConfigArgs {
  /// Data source configuration specifying where to read agent traces. See `dataSourceConfig` Block below.
  final pulumi.Input<AgentcoreOnlineEvaluationConfigDataSourceConfig> dataSourceConfig;
  /// Description of the online evaluation configuration.
  final pulumi.Input<String>? description;
  /// Whether to enable the online evaluation configuration immediately upon creation.
  final pulumi.Input<bool> enableOnCreate;
  /// ARN of the IAM role that grants permissions to read from CloudWatch logs, write evaluation results, and invoke Amazon Bedrock models for evaluation.
  final pulumi.Input<String> evaluationExecutionRoleArn;
  /// List of evaluators to apply during online evaluation. Minimum 1, maximum 10. See `evaluator` Block below.
  final pulumi.Input<List<AgentcoreOnlineEvaluationConfigEvaluator>> evaluators;
  /// Execution status to enable or disable the online evaluation. Valid values: `ENABLED`, `DISABLED`. Computed on create based on `enableOnCreate`.
  final pulumi.Input<String>? executionStatus;
  /// Name of the online evaluation configuration. Must start with a letter and contain only alphanumeric characters and underscores, up to 48 characters.
  final pulumi.Input<String> onlineEvaluationConfigName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Evaluation rule defining sampling configuration, filters, and session detection settings. See `rule` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreOnlineEvaluationConfigRule> rule;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentcoreOnlineEvaluationConfigTimeouts>? timeouts;

  /// Creates a new [AgentcoreOnlineEvaluationConfigArgs].
  /// [dataSourceConfig] Data source configuration specifying where to read agent traces. See `dataSourceConfig` Block below.
  /// [description] Description of the online evaluation configuration.
  /// [enableOnCreate] Whether to enable the online evaluation configuration immediately upon creation.
  /// [evaluationExecutionRoleArn] ARN of the IAM role that grants permissions to read from CloudWatch logs, write evaluation results, and invoke Amazon Bedrock models for evaluation.
  /// [evaluators] List of evaluators to apply during online evaluation. Minimum 1, maximum 10. See `evaluator` Block below.
  /// [executionStatus] Execution status to enable or disable the online evaluation. Valid values: `ENABLED`, `DISABLED`. Computed on create based on `enableOnCreate`.
  /// [onlineEvaluationConfigName] Name of the online evaluation configuration. Must start with a letter and contain only alphanumeric characters and underscores, up to 48 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Evaluation rule defining sampling configuration, filters, and session detection settings. See `rule` Block below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentcoreOnlineEvaluationConfigArgs({
    required this.dataSourceConfig,
    this.description,
    required this.enableOnCreate,
    required this.evaluationExecutionRoleArn,
    required this.evaluators,
    this.executionStatus,
    required this.onlineEvaluationConfigName,
    this.region,
    required this.rule,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceConfig': pulumi.Input.mapInputValue<AgentcoreOnlineEvaluationConfigDataSourceConfig, Map<String, dynamic>>(dataSourceConfig, (value) => value.toMap()),
      'description': ?description,
      'enableOnCreate': enableOnCreate,
      'evaluationExecutionRoleArn': evaluationExecutionRoleArn,
      'evaluators': pulumi.Input.mapInputValue<List<AgentcoreOnlineEvaluationConfigEvaluator>, List<Map<String, dynamic>>>(evaluators, (value) => pulumi.Input.encodeList<AgentcoreOnlineEvaluationConfigEvaluator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionStatus': ?executionStatus,
      'onlineEvaluationConfigName': onlineEvaluationConfigName,
      'region': ?region,
      'rule': pulumi.Input.mapInputValue<AgentcoreOnlineEvaluationConfigRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreOnlineEvaluationConfigTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreOnlineEvaluationConfigArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigArgs(
      dataSourceConfig: pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigDataSourceConfig.fromMap((map['dataSourceConfig']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableOnCreate: pulumi.Input.fromValue(map['enableOnCreate'] as bool),
      evaluationExecutionRoleArn: pulumi.Input.fromValue(map['evaluationExecutionRoleArn'] as String),
      evaluators: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOnlineEvaluationConfigEvaluator>(map['evaluators']!, (value) => AgentcoreOnlineEvaluationConfigEvaluator.fromMap((value as Map).cast<String, dynamic>()))),
      executionStatus: (() { final guardedValue = map['executionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineEvaluationConfigName: pulumi.Input.fromValue(map['onlineEvaluationConfigName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigRule.fromMap((map['rule']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
