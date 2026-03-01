// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_rule.dart';

/// Defines contents of rate limit rules
class RateLimitRuleList {
  /// List of rules
  final List<RateLimitRule>? rules;

  /// Creates a new [RateLimitRuleList].
  /// [rules] List of rules
  RateLimitRuleList({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RateLimitRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory RateLimitRuleList.fromMap(Map<String, dynamic> map) {
    return RateLimitRuleList(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RateLimitRule>(map['rules'], (value) => RateLimitRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

