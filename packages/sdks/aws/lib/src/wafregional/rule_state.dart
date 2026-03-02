// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_predicate.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The ARN of the WAF Regional Rule.
  final pulumi.Input<String>? arn;
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final pulumi.Input<String>? metricName;
  /// The name or description of the rule.
  final pulumi.Input<String>? name;
  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RulePredicate>>? predicates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RuleState].
  /// [arn] The ARN of the WAF Regional Rule.
  /// [metricName] The name or description for the Amazon CloudWatch metric of this rule.
  /// [name] The name or description of the rule.
  /// [predicates] The objects to include in a rule (documented below).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RuleState({
    this.arn,
    this.metricName,
    this.name,
    this.predicates,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'metricName': ?metricName,
      'name': ?name,
      'predicates': ?pulumi.Input.mapOptionalInputValue<List<RulePredicate>, List<Map<String, dynamic>>>(predicates, (value) => pulumi.Input.encodeList<RulePredicate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      metricName: map['metricName'] == null ? null : ((map['metricName'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      predicates: map['predicates'] == null ? null : ((pulumi.Input.decodeList<RulePredicate>(map['predicates']!, (value) => RulePredicate.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

