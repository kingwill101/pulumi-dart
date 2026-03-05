// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_rate_limit_characteristics.dart';
import 'waf_rule_config_rate_limit_threshold.dart';

class WafRuleConfigRateLimit {
  /// The statistical dimensions to which the rate limiting rule applies. See `characteristics` below.
  final pulumi.Input<WafRuleConfigRateLimitCharacteristics>? characteristics;
  /// The statistical interval.
  final pulumi.Input<int>? interval;
  /// Indicates whether the rule applies to requests that hit the cache.
  final pulumi.Input<bool>? onHit;
  /// Threshold settings for the rate limiting rule. See `threshold` below.
  final pulumi.Input<WafRuleConfigRateLimitThreshold>? threshold;
  /// The timeout period for creating the stack used in rate limiting.
  final pulumi.Input<int>? ttl;

  /// Creates a new [WafRuleConfigRateLimit].
  /// [characteristics] The statistical dimensions to which the rate limiting rule applies. See `characteristics` below.
  /// [interval] The statistical interval.
  /// [onHit] Indicates whether the rule applies to requests that hit the cache.
  /// [threshold] Threshold settings for the rate limiting rule. See `threshold` below.
  /// [ttl] The timeout period for creating the stack used in rate limiting.
  WafRuleConfigRateLimit({
    this.characteristics,
    this.interval,
    this.onHit,
    this.threshold,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characteristics': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigRateLimitCharacteristics, Map<String, dynamic>>(characteristics, (value) => value.toMap()),
      'interval': ?interval,
      'onHit': ?onHit,
      'threshold': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigRateLimitThreshold, Map<String, dynamic>>(threshold, (value) => value.toMap()),
      'ttl': ?ttl,
    };
  }

  factory WafRuleConfigRateLimit.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimit(
      characteristics: (() { final guardedValue = map['characteristics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WafRuleConfigRateLimitCharacteristics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      onHit: (() { final guardedValue = map['onHit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WafRuleConfigRateLimitThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

