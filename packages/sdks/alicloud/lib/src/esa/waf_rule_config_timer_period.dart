// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigTimerPeriod {
  /// End time in HH:mm:ss format
  final pulumi.Input<String>? end;
  /// Start time in HH:mm:ss format
  final pulumi.Input<String>? start;

  /// Creates a new [WafRuleConfigTimerPeriod].
  /// [end] End time in HH:mm:ss format
  /// [start] Start time in HH:mm:ss format
  const WafRuleConfigTimerPeriod({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory WafRuleConfigTimerPeriod.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigTimerPeriod(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

