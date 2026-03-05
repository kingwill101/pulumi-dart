// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingRuleHybridMetricDimension {
  final pulumi.Input<String>? dimensionKey;
  final pulumi.Input<String>? dimensionValue;

  /// Creates a new [ScalingRuleHybridMetricDimension].
  /// [dimensionKey] Optional.
  /// [dimensionValue] Optional.
  ScalingRuleHybridMetricDimension({
    this.dimensionKey,
    this.dimensionValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionKey': ?dimensionKey,
      'dimensionValue': ?dimensionValue,
    };
  }

  factory ScalingRuleHybridMetricDimension.fromMap(Map<String, dynamic> map) {
    return ScalingRuleHybridMetricDimension(
      dimensionKey: (() { final guardedValue = map['dimensionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensionValue: (() { final guardedValue = map['dimensionValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

