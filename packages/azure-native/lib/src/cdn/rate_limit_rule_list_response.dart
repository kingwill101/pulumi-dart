// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_rule_response.dart';

/// Defines contents of rate limit rules
class RateLimitRuleListResponse {
  /// List of rules
  final List<RateLimitRuleResponse>? rules;

  /// Creates a new [RateLimitRuleListResponse].
  /// [rules] List of rules
  RateLimitRuleListResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RateLimitRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory RateLimitRuleListResponse.fromMap(Map<String, dynamic> map) {
    return RateLimitRuleListResponse(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RateLimitRuleResponse>(map['rules'], (value) => RateLimitRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

