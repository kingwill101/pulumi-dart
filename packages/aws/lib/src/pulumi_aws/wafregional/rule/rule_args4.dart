// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_predicate/rule_predicate2.dart';

/// The set of arguments for Rule.
class RuleArgs4 {
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final Input<String> metricName;

  /// The name or description of the rule.
  final Input<String>? name;

  /// The objects to include in a rule (documented below).
  final Input<List<RulePredicate2>>? predicates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RuleArgs4({
    required this.metricName,
    this.name,
    this.predicates,
    this.region,
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
      map['predicates'] = Input.mapOptionalInputValue<List<RulePredicate2>,
              List<Map<String, dynamic>>>(
          predicatesValue,
          (value) => Input.encodeList<RulePredicate2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleArgs4.fromMap(Map<String, dynamic> map) {
    return RuleArgs4(
      metricName: Input.asInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      predicates:
          Input.asOptionalInput<List<RulePredicate2>>(map['predicates']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
