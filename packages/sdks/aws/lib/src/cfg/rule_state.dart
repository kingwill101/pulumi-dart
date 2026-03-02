// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_evaluation_mode.dart';
import 'rule_scope.dart';
import 'rule_source.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The ARN of the config rule
  final pulumi.Input<String>? arn;
  /// Description of the rule
  final pulumi.Input<String>? description;
  /// The modes the Config rule can be evaluated in. See Evaluation Mode for more details.
  final pulumi.Input<List<RuleEvaluationMode>>? evaluationModes;
  /// A string in JSON format that is passed to the AWS Config rule Lambda function.
  final pulumi.Input<String>? inputParameters;
  /// The maximum frequency with which AWS Config runs evaluations for a rule.
  final pulumi.Input<String>? maximumExecutionFrequency;
  /// The name of the rule
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the config rule
  final pulumi.Input<String>? ruleId;
  /// Scope defines which resources can trigger an evaluation for the rule. See Scope Below.
  final pulumi.Input<RuleScope>? scope;
  /// Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Source Below.
  final pulumi.Input<RuleSource>? source;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RuleState].
  /// [arn] The ARN of the config rule
  /// [description] Description of the rule
  /// [evaluationModes] The modes the Config rule can be evaluated in. See Evaluation Mode for more details.
  /// [inputParameters] A string in JSON format that is passed to the AWS Config rule Lambda function.
  /// [maximumExecutionFrequency] The maximum frequency with which AWS Config runs evaluations for a rule.
  /// [name] The name of the rule
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleId] The ID of the config rule
  /// [scope] Scope defines which resources can trigger an evaluation for the rule. See Scope Below.
  /// [source] Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Source Below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RuleState({
    this.arn,
    this.description,
    this.evaluationModes,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.name,
    this.region,
    this.ruleId,
    this.scope,
    this.source,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'evaluationModes': ?pulumi.Input.mapOptionalInputValue<List<RuleEvaluationMode>, List<Map<String, dynamic>>>(evaluationModes, (value) => pulumi.Input.encodeList<RuleEvaluationMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'name': ?name,
      'region': ?region,
      'ruleId': ?ruleId,
      'scope': ?pulumi.Input.mapOptionalInputValue<RuleScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<RuleSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      evaluationModes: map['evaluationModes'] == null ? null : (pulumi.Input.decodeList<RuleEvaluationMode>(map['evaluationModes'], (value) => RuleEvaluationMode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputParameters: map['inputParameters'] == null ? null : (map['inputParameters'] as String).input(),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null ? null : (map['maximumExecutionFrequency'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId'] as String).input(),
      scope: map['scope'] == null ? null : (RuleScope.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (RuleSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

