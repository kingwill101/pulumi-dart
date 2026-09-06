// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_rule.dart';

/// Defines contents of rate limit rules
class RateLimitRuleList {
  /// List of rules
  final pulumi.Input<List<RateLimitRule>?>? rules;

  /// Creates a new [RateLimitRuleList].
  /// [rules] List of rules
  const RateLimitRuleList({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RateLimitRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RateLimitRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RateLimitRuleList.fromMap(Map<String, dynamic> map) {
    return RateLimitRuleList(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RateLimitRule>(guardedValue, (value) => RateLimitRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
