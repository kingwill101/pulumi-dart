// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_evaluation_mode.dart';
import 'rule_scope.dart';
import 'rule_source.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The ARN of the config rule
  final pulumi.Input<String?>? arn;
  /// Description of the rule
  final pulumi.Input<String?>? description;
  /// The modes the Config rule can be evaluated in. See Evaluation Mode for more details.
  final pulumi.Input<List<RuleEvaluationMode>?>? evaluationModes;
  /// A string in JSON format that is passed to the AWS Config rule Lambda function.
  final pulumi.Input<String?>? inputParameters;
  /// The maximum frequency with which AWS Config runs evaluations for a rule.
  final pulumi.Input<String?>? maximumExecutionFrequency;
  /// The name of the rule
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the config rule
  final pulumi.Input<String?>? ruleId;
  /// Scope defines which resources can trigger an evaluation for the rule. See Scope Below.
  final pulumi.Input<RuleScope?>? scope;
  /// Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Source Below.
  final pulumi.Input<RuleSource?>? source;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const RuleState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationModes: (() { final guardedValue = map['evaluationModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleEvaluationMode>(guardedValue, (value) => RuleEvaluationMode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputParameters: (() { final guardedValue = map['inputParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumExecutionFrequency: (() { final guardedValue = map['maximumExecutionFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
