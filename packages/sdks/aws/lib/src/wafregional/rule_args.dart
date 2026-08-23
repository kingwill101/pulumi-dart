// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_predicate.dart';

/// {@template pulumi_wafregional_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_wafregional_rule_rule_args_doc}
class RuleArgs {
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final pulumi.Input<String> metricName;
  /// The name or description of the rule.
  final pulumi.Input<String>? name;
  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RulePredicate>>? predicates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuleArgs].
  /// [metricName] The name or description for the Amazon CloudWatch metric of this rule.
  /// [name] The name or description of the rule.
  /// [predicates] The objects to include in a rule (documented below).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const RuleArgs({
    required this.metricName,
    this.name,
    this.predicates,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'name': ?name,
      'predicates': ?pulumi.Input.mapOptionalInputValue<List<RulePredicate>, List<Map<String, dynamic>>>(predicates, (value) => pulumi.Input.encodeList<RulePredicate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predicates: (() { final guardedValue = map['predicates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulePredicate>(guardedValue, (value) => RulePredicate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
