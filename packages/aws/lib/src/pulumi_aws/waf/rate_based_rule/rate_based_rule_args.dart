// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rate_based_rule_predicate/rate_based_rule_predicate.dart';

/// The set of arguments for RateBasedRule.
class RateBasedRuleArgs {
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final Input<String> metricName;

  /// The name or description of the rule.
  final Input<String>? name;

  /// The objects to include in a rule (documented below).
  final Input<List<RateBasedRulePredicate>>? predicates;

  /// Valid value is IP.
  final Input<String> rateKey;

  /// The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  final Input<int> rateLimit;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RateBasedRuleArgs({
    required this.metricName,
    this.name,
    this.predicates,
    required this.rateKey,
    required this.rateLimit,
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
      map['predicates'] = Input.mapOptionalInputValue<
              List<RateBasedRulePredicate>, List<Map<String, dynamic>>>(
          predicatesValue,
          (value) =>
              Input.encodeList<RateBasedRulePredicate, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['rateKey'] = rateKey;
    map['rateLimit'] = rateLimit;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RateBasedRuleArgs.fromMap(Map<String, dynamic> map) {
    return RateBasedRuleArgs(
      metricName: Input.asInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      predicates: Input.asOptionalInput<List<RateBasedRulePredicate>>(
          map['predicates']),
      rateKey: Input.asInput<String>(map['rateKey']),
      rateLimit: Input.asInput<int>(map['rateLimit']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
