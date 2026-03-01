// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_evaluation_mode.dart';
import 'rule_scope.dart';
import 'rule_source.dart';

/// {@template pulumi_cfg_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_cfg_rule_rule_args_doc}
class RuleArgs {
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

  /// Scope defines which resources can trigger an evaluation for the rule. See Scope Below.
  final pulumi.Input<RuleScope>? scope;

  /// Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Source Below.
  final pulumi.Input<RuleSource> source;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuleArgs].
  /// [description] Description of the rule
  /// [evaluationModes] The modes the Config rule can be evaluated in. See Evaluation Mode for more details.
  /// [inputParameters] A string in JSON format that is passed to the AWS Config rule Lambda function.
  /// [maximumExecutionFrequency] The maximum frequency with which AWS Config runs evaluations for a rule.
  /// [name] The name of the rule
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Scope defines which resources can trigger an evaluation for the rule. See Scope Below.
  /// [source] Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Source Below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RuleArgs({
    String? description,
    List<RuleEvaluationMode>? evaluationModes,
    String? inputParameters,
    String? maximumExecutionFrequency,
    String? name,
    String? region,
    RuleScope? scope,
    required RuleSource source,
    Map<String, String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       evaluationModes = pulumi.Input.asOptionalInput<List<RuleEvaluationMode>>(
         evaluationModes,
       ),
       inputParameters = pulumi.Input.asOptionalInput<String>(inputParameters),
       maximumExecutionFrequency = pulumi.Input.asOptionalInput<String>(
         maximumExecutionFrequency,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       scope = pulumi.Input.asOptionalInput<RuleScope>(scope),
       source = pulumi.Input.asInput<RuleSource>(source),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'evaluationModes':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuleEvaluationMode>,
            List<Map<String, dynamic>>
          >(
            evaluationModes,
            (value) =>
                pulumi.Input.encodeList<
                  RuleEvaluationMode,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'name': ?name,
      'region': ?region,
      'scope':
          ?pulumi.Input.mapOptionalInputValue<RuleScope, Map<String, dynamic>>(
            scope,
            (value) => value.toMap(),
          ),
      'source': pulumi.Input.mapInputValue<RuleSource, Map<String, dynamic>>(
        source,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      evaluationModes: map['evaluationModes'] == null
          ? null
          : pulumi.Input.decodeList<RuleEvaluationMode>(
              map['evaluationModes'],
              (value) => RuleEvaluationMode.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      inputParameters: map['inputParameters'] == null
          ? null
          : map['inputParameters'] as String,
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null
          ? null
          : map['maximumExecutionFrequency'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scope: map['scope'] == null
          ? null
          : RuleScope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      source: RuleSource.fromMap(
        (map['source'] as Map).cast<String, dynamic>(),
      ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
