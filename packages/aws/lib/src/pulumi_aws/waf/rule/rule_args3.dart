// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_predicate/rule_predicate.dart';

/// The set of arguments for Rule.
class RuleArgs3 {
  /// The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  final Input<String> metricName;

  /// The name or description of the rule.
  final Input<String>? name;

  /// The objects to include in a rule (documented below).
  final Input<List<RulePredicate>>? predicates;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RuleArgs3({
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
      map['predicates'] = Input.mapOptionalInputValue<List<RulePredicate>,
              List<Map<String, dynamic>>>(
          predicatesValue,
          (value) => Input.encodeList<RulePredicate, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleArgs3.fromMap(Map<String, dynamic> map) {
    return RuleArgs3(
      metricName: Input.asInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      predicates: Input.asOptionalInput<List<RulePredicate>>(map['predicates']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
