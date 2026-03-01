// ignore_for_file: unused_element, unnecessary_cast

import 'waf_rule_config_rate_limit_characteristics.dart';
import 'waf_rule_config_rate_limit_threshold.dart';

class WafRuleConfigRateLimit {
  /// The statistical dimensions to which the rate limiting rule applies. See `characteristics` below.
  final WafRuleConfigRateLimitCharacteristics? characteristics;
  /// The statistical interval.
  final int? interval;
  /// Indicates whether the rule applies to requests that hit the cache.
  final bool? onHit;
  /// Threshold settings for the rate limiting rule. See `threshold` below.
  final WafRuleConfigRateLimitThreshold? threshold;
  /// The timeout period for creating the stack used in rate limiting.
  final int? ttl;

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
      'characteristics': ?characteristics == null ? null : characteristics!.toMap(),
      'interval': ?interval,
      'onHit': ?onHit,
      'threshold': ?threshold == null ? null : threshold!.toMap(),
      'ttl': ?ttl,
    };
  }

  factory WafRuleConfigRateLimit.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimit(
      characteristics: map['characteristics'] == null ? null : WafRuleConfigRateLimitCharacteristics.fromMap((map['characteristics'] as Map).cast<String, dynamic>()),
      interval: map['interval'] == null ? null : map['interval'] as int,
      onHit: map['onHit'] == null ? null : map['onHit'] as bool,
      threshold: map['threshold'] == null ? null : WafRuleConfigRateLimitThreshold.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}

