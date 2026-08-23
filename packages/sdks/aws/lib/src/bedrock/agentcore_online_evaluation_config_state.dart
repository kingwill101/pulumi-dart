// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_online_evaluation_config_data_source_config.dart';
import 'agentcore_online_evaluation_config_evaluator.dart';
import 'agentcore_online_evaluation_config_output_config.dart';
import 'agentcore_online_evaluation_config_rule.dart';
import 'agentcore_online_evaluation_config_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreOnlineEvaluationConfig resources.
class AgentcoreOnlineEvaluationConfigState {
  /// Data source configuration specifying where to read agent traces. See `dataSourceConfig` Block below.
  final pulumi.Input<AgentcoreOnlineEvaluationConfigDataSourceConfig>? dataSourceConfig;
  /// Description of the online evaluation configuration.
  final pulumi.Input<String>? description;
  /// Whether to enable the online evaluation configuration immediately upon creation.
  final pulumi.Input<bool>? enableOnCreate;
  /// ARN of the IAM role that grants permissions to read from CloudWatch logs, write evaluation results, and invoke Amazon Bedrock models for evaluation.
  final pulumi.Input<String>? evaluationExecutionRoleArn;
  /// List of evaluators to apply during online evaluation. Minimum 1, maximum 10. See `evaluator` Block below.
  final pulumi.Input<List<AgentcoreOnlineEvaluationConfigEvaluator>>? evaluators;
  /// Execution status to enable or disable the online evaluation. Valid values: `ENABLED`, `DISABLED`. Computed on create based on `enableOnCreate`.
  final pulumi.Input<String>? executionStatus;
  /// ARN of the online evaluation configuration.
  final pulumi.Input<String>? onlineEvaluationConfigArn;
  /// Unique identifier of the online evaluation configuration.
  final pulumi.Input<String>? onlineEvaluationConfigId;
  /// Name of the online evaluation configuration. Must start with a letter and contain only alphanumeric characters and underscores, up to 48 characters.
  final pulumi.Input<String>? onlineEvaluationConfigName;
  /// Configuration specifying where evaluation results are written. See `outputConfig` Block below.
  final pulumi.Input<List<AgentcoreOnlineEvaluationConfigOutputConfig>>? outputConfigs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Evaluation rule defining sampling configuration, filters, and session detection settings. See `rule` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreOnlineEvaluationConfigRule>? rule;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreOnlineEvaluationConfigTimeouts>? timeouts;

  /// Creates a new [AgentcoreOnlineEvaluationConfigState].
  /// [dataSourceConfig] Data source configuration specifying where to read agent traces. See `dataSourceConfig` Block below.
  /// [description] Description of the online evaluation configuration.
  /// [enableOnCreate] Whether to enable the online evaluation configuration immediately upon creation.
  /// [evaluationExecutionRoleArn] ARN of the IAM role that grants permissions to read from CloudWatch logs, write evaluation results, and invoke Amazon Bedrock models for evaluation.
  /// [evaluators] List of evaluators to apply during online evaluation. Minimum 1, maximum 10. See `evaluator` Block below.
  /// [executionStatus] Execution status to enable or disable the online evaluation. Valid values: `ENABLED`, `DISABLED`. Computed on create based on `enableOnCreate`.
  /// [onlineEvaluationConfigArn] ARN of the online evaluation configuration.
  /// [onlineEvaluationConfigId] Unique identifier of the online evaluation configuration.
  /// [onlineEvaluationConfigName] Name of the online evaluation configuration. Must start with a letter and contain only alphanumeric characters and underscores, up to 48 characters.
  /// [outputConfigs] Configuration specifying where evaluation results are written. See `outputConfig` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Evaluation rule defining sampling configuration, filters, and session detection settings. See `rule` Block below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AgentcoreOnlineEvaluationConfigState({
    this.dataSourceConfig,
    this.description,
    this.enableOnCreate,
    this.evaluationExecutionRoleArn,
    this.evaluators,
    this.executionStatus,
    this.onlineEvaluationConfigArn,
    this.onlineEvaluationConfigId,
    this.onlineEvaluationConfigName,
    this.outputConfigs,
    this.region,
    this.rule,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOnlineEvaluationConfigDataSourceConfig, Map<String, dynamic>>(dataSourceConfig, (value) => value.toMap()),
      'description': ?description,
      'enableOnCreate': ?enableOnCreate,
      'evaluationExecutionRoleArn': ?evaluationExecutionRoleArn,
      'evaluators': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOnlineEvaluationConfigEvaluator>, List<Map<String, dynamic>>>(evaluators, (value) => pulumi.Input.encodeList<AgentcoreOnlineEvaluationConfigEvaluator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionStatus': ?executionStatus,
      'onlineEvaluationConfigArn': ?onlineEvaluationConfigArn,
      'onlineEvaluationConfigId': ?onlineEvaluationConfigId,
      'onlineEvaluationConfigName': ?onlineEvaluationConfigName,
      'outputConfigs': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOnlineEvaluationConfigOutputConfig>, List<Map<String, dynamic>>>(outputConfigs, (value) => pulumi.Input.encodeList<AgentcoreOnlineEvaluationConfigOutputConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<AgentcoreOnlineEvaluationConfigRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreOnlineEvaluationConfigTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreOnlineEvaluationConfigState.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigState(
      dataSourceConfig: (() { final guardedValue = map['dataSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigDataSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableOnCreate: (() { final guardedValue = map['enableOnCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evaluationExecutionRoleArn: (() { final guardedValue = map['evaluationExecutionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluators: (() { final guardedValue = map['evaluators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOnlineEvaluationConfigEvaluator>(guardedValue, (value) => AgentcoreOnlineEvaluationConfigEvaluator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionStatus: (() { final guardedValue = map['executionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineEvaluationConfigArn: (() { final guardedValue = map['onlineEvaluationConfigArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineEvaluationConfigId: (() { final guardedValue = map['onlineEvaluationConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineEvaluationConfigName: (() { final guardedValue = map['onlineEvaluationConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputConfigs: (() { final guardedValue = map['outputConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOnlineEvaluationConfigOutputConfig>(guardedValue, (value) => AgentcoreOnlineEvaluationConfigOutputConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
