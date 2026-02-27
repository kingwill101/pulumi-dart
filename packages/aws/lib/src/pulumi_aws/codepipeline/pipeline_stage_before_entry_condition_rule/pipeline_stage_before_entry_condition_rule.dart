// ignore_for_file: unused_element, unnecessary_cast

import '../pipeline_stage_before_entry_condition_rule_rule_type_id/pipeline_stage_before_entry_condition_rule_rule_type_id.dart';

class PipelineStageBeforeEntryConditionRule {
  /// The shell commands to run with your commands rule in CodePipeline. All commands are supported except multi-line formats.
  final List<String>? commands;

  /// The action configuration fields for the rule. Configurations options for rule types and providers can be found in the [Rule structure reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html).
  final Map<String, String>? configuration;

  /// The list of the input artifacts fields for the rule, such as specifying an input file for the rule.
  final List<String>? inputArtifacts;

  /// The name of the rule that is created for the condition, such as `VariableCheck`.
  final String name;

  /// The Region for the condition associated with the rule.
  final String? region;

  /// The pipeline role ARN associated with the rule.
  final String? roleArn;

  /// The ID for the rule type, which is made up of the combined values for `category`, `owner`, `provider`, and `version`. Defined as an `rule_type_id` block below.
  final PipelineStageBeforeEntryConditionRuleRuleTypeId ruleTypeId;

  /// The action timeout for the rule.
  final int? timeoutInMinutes;

  PipelineStageBeforeEntryConditionRule({
    this.commands,
    this.configuration,
    this.inputArtifacts,
    required this.name,
    this.region,
    this.roleArn,
    required this.ruleTypeId,
    this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = configurationValue;
    }
    final inputArtifactsValue = inputArtifacts;
    if (inputArtifactsValue != null) {
      map['inputArtifacts'] = inputArtifactsValue;
    }
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['ruleTypeId'] = ruleTypeId.toMap();
    final timeoutInMinutesValue = timeoutInMinutes;
    if (timeoutInMinutesValue != null) {
      map['timeoutInMinutes'] = timeoutInMinutesValue;
    }
    return map;
  }

  factory PipelineStageBeforeEntryConditionRule.fromMap(
      Map<String, dynamic> map) {
    return PipelineStageBeforeEntryConditionRule(
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      configuration: map['configuration'] == null
          ? null
          : (map['configuration'] as Map).cast<String, String>(),
      inputArtifacts: map['inputArtifacts'] == null
          ? null
          : (map['inputArtifacts'] as List).cast<String>(),
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      ruleTypeId: PipelineStageBeforeEntryConditionRuleRuleTypeId.fromMap(
          (map['ruleTypeId'] as Map).cast<String, dynamic>()),
      timeoutInMinutes: map['timeoutInMinutes'] == null
          ? null
          : map['timeoutInMinutes'] as int,
    );
  }
}
