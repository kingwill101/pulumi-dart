// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_based_rule_predicate.dart';

/// Input properties used for looking up and filtering RateBasedRule resources.
class RateBasedRuleState {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final pulumi.Input<String>? metricName;
  /// The name or description of the rule.
  final pulumi.Input<String>? name;
  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RateBasedRulePredicate>>? predicates;
  /// Valid value is IP.
  final pulumi.Input<String>? rateKey;
  /// The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  final pulumi.Input<int>? rateLimit;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RateBasedRuleState].
  /// [arn] Amazon Resource Name (ARN)
  /// [metricName] The name or description for the Amazon CloudWatch metric of this rule.
  /// [name] The name or description of the rule.
  /// [predicates] The objects to include in a rule (documented below).
  /// [rateKey] Valid value is IP.
  /// [rateLimit] The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RateBasedRuleState({
    this.arn,
    this.metricName,
    this.name,
    this.predicates,
    this.rateKey,
    this.rateLimit,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'metricName': ?metricName,
      'name': ?name,
      'predicates': ?pulumi.Input.mapOptionalInputValue<List<RateBasedRulePredicate>, List<Map<String, dynamic>>>(predicates, (value) => pulumi.Input.encodeList<RateBasedRulePredicate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rateKey': ?rateKey,
      'rateLimit': ?rateLimit,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RateBasedRuleState.fromMap(Map<String, dynamic> map) {
    return RateBasedRuleState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      predicates: map['predicates'] == null ? null : (pulumi.Input.decodeList<RateBasedRulePredicate>(map['predicates'], (value) => RateBasedRulePredicate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rateKey: map['rateKey'] == null ? null : (map['rateKey'] as String).input(),
      rateLimit: map['rateLimit'] == null ? null : (map['rateLimit'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

