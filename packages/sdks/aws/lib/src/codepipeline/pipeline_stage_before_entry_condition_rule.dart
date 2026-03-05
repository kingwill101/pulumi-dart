// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stage_before_entry_condition_rule_rule_type_id.dart';

class PipelineStageBeforeEntryConditionRule {
  /// The shell commands to run with your commands rule in CodePipeline. All commands are supported except multi-line formats.
  final pulumi.Input<List<String>>? commands;
  /// The action configuration fields for the rule. Configurations options for rule types and providers can be found in the [Rule structure reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html).
  final pulumi.Input<Map<String, String>>? configuration;
  /// The list of the input artifacts fields for the rule, such as specifying an input file for the rule.
  final pulumi.Input<List<String>>? inputArtifacts;
  /// The name of the rule that is created for the condition, such as `VariableCheck`.
  final pulumi.Input<String> name;
  /// The Region for the condition associated with the rule.
  final pulumi.Input<String>? region;
  /// The pipeline role ARN associated with the rule.
  final pulumi.Input<String>? roleArn;
  /// The ID for the rule type, which is made up of the combined values for `category`, `owner`, `provider`, and `version`. Defined as an `rule_type_id` block below.
  final pulumi.Input<PipelineStageBeforeEntryConditionRuleRuleTypeId> ruleTypeId;
  /// The action timeout for the rule.
  final pulumi.Input<int>? timeoutInMinutes;

  /// Creates a new [PipelineStageBeforeEntryConditionRule].
  /// [commands] The shell commands to run with your commands rule in CodePipeline. All commands are supported except multi-line formats.
  /// [configuration] The action configuration fields for the rule. Configurations options for rule types and providers can be found in the [Rule structure reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html).
  /// [inputArtifacts] The list of the input artifacts fields for the rule, such as specifying an input file for the rule.
  /// [name] The name of the rule that is created for the condition, such as `VariableCheck`.
  /// [region] The Region for the condition associated with the rule.
  /// [roleArn] The pipeline role ARN associated with the rule.
  /// [ruleTypeId] The ID for the rule type, which is made up of the combined values for `category`, `owner`, `provider`, and `version`. Defined as an `rule_type_id` block below.
  /// [timeoutInMinutes] The action timeout for the rule.
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
    return <String, dynamic>{
      'commands': ?commands,
      'configuration': ?configuration,
      'inputArtifacts': ?inputArtifacts,
      'name': name,
      'region': ?region,
      'roleArn': ?roleArn,
      'ruleTypeId': pulumi.Input.mapInputValue<PipelineStageBeforeEntryConditionRuleRuleTypeId, Map<String, dynamic>>(ruleTypeId, (value) => value.toMap()),
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory PipelineStageBeforeEntryConditionRule.fromMap(Map<String, dynamic> map) {
    return PipelineStageBeforeEntryConditionRule(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      inputArtifacts: (() { final guardedValue = map['inputArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleTypeId: pulumi.Input.fromValue(PipelineStageBeforeEntryConditionRuleRuleTypeId.fromMap((map['ruleTypeId']! as Map).cast<String, dynamic>())),
      timeoutInMinutes: (() { final guardedValue = map['timeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

