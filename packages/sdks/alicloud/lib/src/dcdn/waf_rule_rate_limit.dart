// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_rate_limit_status.dart';

class WafRuleRateLimit {
  /// Statistical duration, 5-1800.
  final pulumi.Input<int>? interval;

  /// Response code statistics. See `status` below.
  final pulumi.Input<WafRuleRateLimitStatus>? status;

  /// The subfield of the target field. If you set `target` to `Header`, `Query String Parameter`, or `Cookie Name`, you must configure `sub_key`.
  final pulumi.Input<String>? subKey;

  /// The statistical field for frequency control. Currently, `IP`, `Header`, `Query String Parameter`, `Cookie Name`, `Session` is supported.
  final pulumi.Input<String>? target;

  /// The trigger threshold of rate limiting. Valid values: 2 to 500000. Unit: requests.
  final pulumi.Input<int>? threshold;

  /// The validity period of the blacklist. Valid values: 60 to 86400. Unit: seconds.
  final pulumi.Input<int>? ttl;

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
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            WafRuleRateLimitStatus,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
      'subKey': ?subKey,
      'target': ?target,
      'threshold': ?threshold,
      'ttl': ?ttl,
    };
  }

  factory WafRuleRateLimit.fromMap(Map<String, dynamic> map) {
    return WafRuleRateLimit(
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WafRuleRateLimitStatus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subKey: (() {
        final guardedValue = map['subKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
