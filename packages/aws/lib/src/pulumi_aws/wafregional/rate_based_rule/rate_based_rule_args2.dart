// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rate_based_rule_predicate/rate_based_rule_predicate2.dart';

/// The set of arguments for RateBasedRule.
class RateBasedRuleArgs2 {
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final Input<String> metricName;

  /// The name or description of the rule.
  final Input<String>? name;

  /// The objects to include in a rule (documented below).
  final Input<List<RateBasedRulePredicate2>>? predicates;

  /// Valid value is IP.
  final Input<String> rateKey;

  /// The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  final Input<int> rateLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RateBasedRuleArgs2({
    required this.metricName,
    this.name,
    this.predicates,
    required this.rateKey,
    required this.rateLimit,
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
      map['predicates'] = Input.mapOptionalInputValue<
              List<RateBasedRulePredicate2>, List<Map<String, dynamic>>>(
          predicatesValue,
          (value) =>
              Input.encodeList<RateBasedRulePredicate2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['rateKey'] = rateKey;
    map['rateLimit'] = rateLimit;
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

  factory RateBasedRuleArgs2.fromMap(Map<String, dynamic> map) {
    return RateBasedRuleArgs2(
      metricName: Input.asInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      predicates: Input.asOptionalInput<List<RateBasedRulePredicate2>>(
          map['predicates']),
      rateKey: Input.asInput<String>(map['rateKey']),
      rateLimit: Input.asInput<int>(map['rateLimit']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
