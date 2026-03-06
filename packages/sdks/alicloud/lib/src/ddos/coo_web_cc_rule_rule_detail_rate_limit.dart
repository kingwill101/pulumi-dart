// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CooWebCcRuleRuleDetailRateLimit {
  /// Statistical interval. Unit: seconds.
  final pulumi.Input<int> interval;
  /// Header field name (required only when the statistic source is `header`).
  final pulumi.Input<String>? subKey;
  /// Statistic source. Valid values:
  final pulumi.Input<String> target;
  /// The trigger threshold.
  final pulumi.Input<int> threshold;
  /// Block duration. Unit: seconds.
  final pulumi.Input<int> ttl;

  /// Creates a new [CooWebCcRuleRuleDetailRateLimit].
  /// [interval] Statistical interval. Unit: seconds.
  /// [subKey] Header field name (required only when the statistic source is `header`).
  /// [target] Statistic source. Valid values:
  /// [threshold] The trigger threshold.
  /// [ttl] Block duration. Unit: seconds.
  const CooWebCcRuleRuleDetailRateLimit({
    required this.interval,
    this.subKey,
    required this.target,
    required this.threshold,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'subKey': ?subKey,
      'target': target,
      'threshold': threshold,
      'ttl': ttl,
    };
  }

  factory CooWebCcRuleRuleDetailRateLimit.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleRuleDetailRateLimit(
      interval: pulumi.Input.fromValue(map['interval'] as int),
      subKey: (() { final guardedValue = map['subKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as int),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
    );
  }
}

