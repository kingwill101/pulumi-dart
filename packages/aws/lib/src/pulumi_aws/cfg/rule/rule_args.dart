// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_evaluation_mode/rule_evaluation_mode.dart';
import '../rule_scope/rule_scope.dart';
import '../rule_source/rule_source.dart';

/// The set of arguments for Rule.
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

  RuleArgs({
    this.description,
    this.evaluationModes,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.name,
    this.region,
    this.scope,
    required this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final evaluationModesValue = evaluationModes;
    if (evaluationModesValue != null) {
      map['evaluationModes'] = pulumi.Input.mapOptionalInputValue<
              List<RuleEvaluationMode>, List<Map<String, dynamic>>>(
          evaluationModesValue,
          (value) =>
              pulumi.Input.encodeList<RuleEvaluationMode, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final inputParametersValue = inputParameters;
    if (inputParametersValue != null) {
      map['inputParameters'] = inputParametersValue;
    }
    final maximumExecutionFrequencyValue = maximumExecutionFrequency;
    if (maximumExecutionFrequencyValue != null) {
      map['maximumExecutionFrequency'] = maximumExecutionFrequencyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] =
          pulumi.Input.mapOptionalInputValue<RuleScope, Map<String, dynamic>>(
              scopeValue, (value) => value.toMap());
    }
    map['source'] =
        pulumi.Input.mapInputValue<RuleSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      evaluationModes: pulumi.Input.asOptionalInput<List<RuleEvaluationMode>>(
          map['evaluationModes']),
      inputParameters:
          pulumi.Input.asOptionalInput<String>(map['inputParameters']),
      maximumExecutionFrequency: pulumi.Input.asOptionalInput<String>(
          map['maximumExecutionFrequency']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scope: pulumi.Input.asOptionalInput<RuleScope>(map['scope']),
      source: pulumi.Input.asInput<RuleSource>(map['source']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
