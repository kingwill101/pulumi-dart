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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? metricName,
    pulumi.Output<String>? name,
    pulumi.Output<List<RateBasedRulePredicate>>? predicates,
    pulumi.Output<String>? rateKey,
    pulumi.Output<int>? rateLimit,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      metricName = pulumi.Input.asOptionalInput<String>(metricName),
      name = pulumi.Input.asOptionalInput<String>(name),
      predicates = pulumi.Input.asOptionalInput<List<RateBasedRulePredicate>>(predicates),
      rateKey = pulumi.Input.asOptionalInput<String>(rateKey),
      rateLimit = pulumi.Input.asOptionalInput<int>(rateLimit),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      metricName: map['metricName'] == null ? null : pulumi.Output.create<String>(map['metricName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      predicates: map['predicates'] == null ? null : pulumi.Output.create<List<RateBasedRulePredicate>>(pulumi.Input.decodeList<RateBasedRulePredicate>(map['predicates'], (value) => RateBasedRulePredicate.fromMap((value as Map).cast<String, dynamic>()))),
      rateKey: map['rateKey'] == null ? null : pulumi.Output.create<String>(map['rateKey'] as String),
      rateLimit: map['rateLimit'] == null ? null : pulumi.Output.create<int>(map['rateLimit'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

