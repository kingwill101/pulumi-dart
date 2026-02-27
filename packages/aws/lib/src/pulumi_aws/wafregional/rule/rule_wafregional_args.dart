// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_predicate/rule_predicate_wafregional.dart';

/// The set of arguments for Rule.
class RuleWafregionalArgs {
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final pulumi.Input<String> metricName;

  /// The name or description of the rule.
  final pulumi.Input<String>? name;

  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RulePredicateWafregional>>? predicates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  RuleWafregionalArgs({
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
      map['predicates'] = pulumi.Input.mapOptionalInputValue<
              List<RulePredicateWafregional>, List<Map<String, dynamic>>>(
          predicatesValue,
          (value) => pulumi.Input.encodeList<RulePredicateWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory RuleWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return RuleWafregionalArgs(
      metricName: pulumi.Input.asInput<String>(map['metricName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      predicates: pulumi.Input.asOptionalInput<List<RulePredicateWafregional>>(
          map['predicates']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
