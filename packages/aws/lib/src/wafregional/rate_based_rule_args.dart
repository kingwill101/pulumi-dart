// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_based_rule_predicate.dart';

/// {@template pulumi_wafregional_rate_based_rule_rate_based_rule_args_doc}
/// The set of arguments for RateBasedRule.
/// {@endtemplate}
/// {@macro pulumi_wafregional_rate_based_rule_rate_based_rule_args_doc}
class RateBasedRuleArgs {
  /// The name or description for the Amazon CloudWatch metric of this rule.
  final pulumi.Input<String> metricName;
  /// The name or description of the rule.
  final pulumi.Input<String>? name;
  /// The objects to include in a rule (documented below).
  final pulumi.Input<List<RateBasedRulePredicate>>? predicates;
  /// Valid value is IP.
  final pulumi.Input<String> rateKey;
  /// The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  final pulumi.Input<int> rateLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RateBasedRuleArgs].
  /// [metricName] The name or description for the Amazon CloudWatch metric of this rule.
  /// [name] The name or description of the rule.
  /// [predicates] The objects to include in a rule (documented below).
  /// [rateKey] Valid value is IP.
  /// [rateLimit] The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RateBasedRuleArgs({
    required String metricName,
    String? name,
    List<RateBasedRulePredicate>? predicates,
    required String rateKey,
    required int rateLimit,
    String? region,
    Map<String, String>? tags,
  }) :
      metricName = pulumi.Input.asInput<String>(metricName),
      name = pulumi.Input.asOptionalInput<String>(name),
      predicates = pulumi.Input.asOptionalInput<List<RateBasedRulePredicate>>(predicates),
      rateKey = pulumi.Input.asInput<String>(rateKey),
      rateLimit = pulumi.Input.asInput<int>(rateLimit),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'name': ?name,
      'predicates': ?pulumi.Input.mapOptionalInputValue<List<RateBasedRulePredicate>, List<Map<String, dynamic>>>(predicates, (value) => pulumi.Input.encodeList<RateBasedRulePredicate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rateKey': rateKey,
      'rateLimit': rateLimit,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RateBasedRuleArgs.fromMap(Map<String, dynamic> map) {
    return RateBasedRuleArgs(
      metricName: map['metricName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      predicates: map['predicates'] == null ? null : pulumi.Input.decodeList<RateBasedRulePredicate>(map['predicates'], (value) => RateBasedRulePredicate.fromMap((value as Map).cast<String, dynamic>())),
      rateKey: map['rateKey'] as String,
      rateLimit: map['rateLimit'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

