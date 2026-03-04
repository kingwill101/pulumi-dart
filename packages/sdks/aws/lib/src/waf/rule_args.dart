// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_predicate.dart';

/// {@template pulumi_waf_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_waf_rule_rule_args_doc}
class RuleArgs {
  /// The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  final pulumi.Input<String> metricName;

  /// The name or description of the rule.
  final pulumi.Input<String>? name;

  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RulePredicate>>? predicates;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuleArgs].
  /// [metricName] The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  /// [name] The name or description of the rule.
  /// [predicates] The objects to include in a rule (documented below).
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RuleArgs({required this.metricName, this.name, this.predicates, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'name': ?name,
      'predicates':
          ?pulumi.Input.mapOptionalInputValue<
            List<RulePredicate>,
            List<Map<String, dynamic>>
          >(
            predicates,
            (value) =>
                pulumi.Input.encodeList<RulePredicate, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predicates: (() {
        final guardedValue = map['predicates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RulePredicate>(
            guardedValue,
            (value) =>
                RulePredicate.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
