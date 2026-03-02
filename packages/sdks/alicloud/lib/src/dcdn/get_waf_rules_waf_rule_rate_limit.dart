// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_rules_waf_rule_rate_limit_status.dart';

class GetWafRulesWafRuleRateLimit {
  /// The statistical interval. Valid values: 5 to 1800. Unit: seconds.
  final pulumi.Input<int> interval;
  /// The information about the HTTP status code.
  final pulumi.Input<List<GetWafRulesWafRuleRateLimitStatus>> statuses;
  /// The subfield of the target field.
  final pulumi.Input<String> subKey;
  /// The statistical field for frequency control.
  final pulumi.Input<String> target;
  /// The trigger threshold of rate limiting. Valid values: 2 to 500000. Unit: requests.
  final pulumi.Input<int> threshold;
  /// The validity period of the blacklist. Valid values: 60 to 86400. Unit: seconds.
  final pulumi.Input<int> ttl;

  /// Creates a new [GetWafRulesWafRuleRateLimit].
  /// [interval] The statistical interval. Valid values: 5 to 1800. Unit: seconds.
  /// [statuses] The information about the HTTP status code.
  /// [subKey] The subfield of the target field.
  /// [target] The statistical field for frequency control.
  /// [threshold] The trigger threshold of rate limiting. Valid values: 2 to 500000. Unit: requests.
  /// [ttl] The validity period of the blacklist. Valid values: 60 to 86400. Unit: seconds.
  GetWafRulesWafRuleRateLimit({
    required this.interval,
    required this.statuses,
    required this.subKey,
    required this.target,
    required this.threshold,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'statuses': pulumi.Input.mapInputValue<List<GetWafRulesWafRuleRateLimitStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<GetWafRulesWafRuleRateLimitStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subKey': subKey,
      'target': target,
      'threshold': threshold,
      'ttl': ttl,
    };
  }

  factory GetWafRulesWafRuleRateLimit.fromMap(Map<String, dynamic> map) {
    return GetWafRulesWafRuleRateLimit(
      interval: (map['interval'] as int).input(),
      statuses: (pulumi.Input.decodeList<GetWafRulesWafRuleRateLimitStatus>(map['statuses'], (value) => GetWafRulesWafRuleRateLimitStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subKey: (map['subKey'] as String).input(),
      target: (map['target'] as String).input(),
      threshold: (map['threshold'] as int).input(),
      ttl: (map['ttl'] as int).input(),
    );
  }
}

