// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_predicate.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The ARN of the WAF rule.
  final pulumi.Input<String>? arn;
  /// The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  final pulumi.Input<String>? metricName;
  /// The name or description of the rule.
  final pulumi.Input<String>? name;
  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RulePredicate>>? predicates;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RuleState].
  /// [arn] The ARN of the WAF rule.
  /// [metricName] The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  /// [name] The name or description of the rule.
  /// [predicates] The objects to include in a rule (documented below).
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RuleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? metricName,
    pulumi.Output<String>? name,
    pulumi.Output<List<RulePredicate>>? predicates,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      metricName = pulumi.Input.asOptionalInput<String>(metricName),
      name = pulumi.Input.asOptionalInput<String>(name),
      predicates = pulumi.Input.asOptionalInput<List<RulePredicate>>(predicates),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'metricName': ?metricName,
      'name': ?name,
      'predicates': ?pulumi.Input.mapOptionalInputValue<List<RulePredicate>, List<Map<String, dynamic>>>(predicates, (value) => pulumi.Input.encodeList<RulePredicate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      metricName: map['metricName'] == null ? null : pulumi.Output.create<String>(map['metricName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      predicates: map['predicates'] == null ? null : pulumi.Output.create<List<RulePredicate>>(pulumi.Input.decodeList<RulePredicate>(map['predicates'], (value) => RulePredicate.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

