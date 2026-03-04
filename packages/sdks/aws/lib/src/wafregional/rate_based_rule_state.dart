// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_based_rule_predicate.dart';

/// Input properties used for looking up and filtering RateBasedRule resources.
class RateBasedRuleState {
  /// The ARN of the WAF Regional Rate Based Rule.
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

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RateBasedRuleState].
  /// [arn] The ARN of the WAF Regional Rate Based Rule.
  /// [metricName] The name or description for the Amazon CloudWatch metric of this rule.
  /// [name] The name or description of the rule.
  /// [predicates] The objects to include in a rule (documented below).
  /// [rateKey] Valid value is IP.
  /// [rateLimit] The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RateBasedRuleState({
    this.arn,
    this.metricName,
    this.name,
    this.predicates,
    this.rateKey,
    this.rateLimit,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'metricName': ?metricName,
      'name': ?name,
      'predicates':
          ?pulumi.Input.mapOptionalInputValue<
            List<RateBasedRulePredicate>,
            List<Map<String, dynamic>>
          >(
            predicates,
            (value) =>
                pulumi.Input.encodeList<
                  RateBasedRulePredicate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'rateKey': ?rateKey,
      'rateLimit': ?rateLimit,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RateBasedRuleState.fromMap(Map<String, dynamic> map) {
    return RateBasedRuleState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricName: (() {
        final guardedValue = map['metricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predicates: (() {
        final guardedValue = map['predicates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RateBasedRulePredicate>(
            guardedValue,
            (value) => RateBasedRulePredicate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      rateKey: (() {
        final guardedValue = map['rateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rateLimit: (() {
        final guardedValue = map['rateLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
