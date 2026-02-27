// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_predicate/rule_predicate.dart';

/// The set of arguments for Rule.
class RuleWafArgs {
  /// The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  final pulumi.Input<String> metricName;

  /// The name or description of the rule.
  final pulumi.Input<String>? name;

  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RulePredicate>>? predicates;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  RuleWafArgs({
    required this.metricName,
    this.name,
    this.predicates,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricName'] = metricName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final predicatesValue = predicates;
    if (predicatesValue != null) {
      map['predicates'] = pulumi.Input.mapOptionalInputValue<
              List<RulePredicate>, List<Map<String, dynamic>>>(
          predicatesValue,
          (value) =>
              pulumi.Input.encodeList<RulePredicate, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleWafArgs.fromMap(Map<String, dynamic> map) {
    return RuleWafArgs(
      metricName: pulumi.Input.asInput<String>(map['metricName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      predicates:
          pulumi.Input.asOptionalInput<List<RulePredicate>>(map['predicates']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
