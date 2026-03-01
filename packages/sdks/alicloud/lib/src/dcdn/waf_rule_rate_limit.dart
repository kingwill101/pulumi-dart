// ignore_for_file: unused_element, unnecessary_cast

import 'waf_rule_rate_limit_status.dart';

class WafRuleRateLimit {
  /// Statistical duration, 5-1800.
  final int? interval;
  /// Response code statistics. See `status` below.
  final WafRuleRateLimitStatus? status;
  /// The subfield of the target field. If you set `target` to `Header`, `Query String Parameter`, or `Cookie Name`, you must configure `sub_key`.
  final String? subKey;
  /// The statistical field for frequency control. Currently, `IP`, `Header`, `Query String Parameter`, `Cookie Name`, `Session` is supported.
  final String? target;
  /// The trigger threshold of rate limiting. Valid values: 2 to 500000. Unit: requests.
  final int? threshold;
  /// The validity period of the blacklist. Valid values: 60 to 86400. Unit: seconds.
  final int? ttl;

  /// Creates a new [WafRuleRateLimit].
  /// [interval] Statistical duration, 5-1800.
  /// [status] Response code statistics. See `status` below.
  /// [subKey] The subfield of the target field. If you set `target` to `Header`, `Query String Parameter`, or `Cookie Name`, you must configure `sub_key`.
  /// [target] The statistical field for frequency control. Currently, `IP`, `Header`, `Query String Parameter`, `Cookie Name`, `Session` is supported.
  /// [threshold] The trigger threshold of rate limiting. Valid values: 2 to 500000. Unit: requests.
  /// [ttl] The validity period of the blacklist. Valid values: 60 to 86400. Unit: seconds.
  WafRuleRateLimit({
    this.interval,
    this.status,
    this.subKey,
    this.target,
    this.threshold,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'status': ?status == null ? null : status!.toMap(),
      'subKey': ?subKey,
      'target': ?target,
      'threshold': ?threshold,
      'ttl': ?ttl,
    };
  }

  factory WafRuleRateLimit.fromMap(Map<String, dynamic> map) {
    return WafRuleRateLimit(
      interval: map['interval'] == null ? null : map['interval'] as int,
      status: map['status'] == null ? null : WafRuleRateLimitStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      subKey: map['subKey'] == null ? null : map['subKey'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}

