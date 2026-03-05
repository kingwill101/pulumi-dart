// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingRuleAlarmDimension {
  /// The dimension key of the metric.
  final pulumi.Input<String>? dimensionKey;
  /// The dimension value of the metric.
  final pulumi.Input<String>? dimensionValue;

  /// Creates a new [ScalingRuleAlarmDimension].
  /// [dimensionKey] The dimension key of the metric.
  /// [dimensionValue] The dimension value of the metric.
  ScalingRuleAlarmDimension({
    this.dimensionKey,
    this.dimensionValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionKey': ?dimensionKey,
      'dimensionValue': ?dimensionValue,
    };
  }

  factory ScalingRuleAlarmDimension.fromMap(Map<String, dynamic> map) {
    return ScalingRuleAlarmDimension(
      dimensionKey: (() { final guardedValue = map['dimensionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensionValue: (() { final guardedValue = map['dimensionValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

