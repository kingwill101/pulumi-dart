// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScalingRulesRuleHybridMetricDimension {
  /// (Available since v1.250.0) The dimension key of the metric.
  final pulumi.Input<String> dimensionKey;
  /// (Available since v1.250.0) The dimension value of the metric.
  final pulumi.Input<String> dimensionValue;

  /// Creates a new [GetScalingRulesRuleHybridMetricDimension].
  /// [dimensionKey] (Available since v1.250.0) The dimension key of the metric.
  /// [dimensionValue] (Available since v1.250.0) The dimension value of the metric.
  GetScalingRulesRuleHybridMetricDimension({
    required this.dimensionKey,
    required this.dimensionValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionKey': dimensionKey,
      'dimensionValue': dimensionValue,
    };
  }

  factory GetScalingRulesRuleHybridMetricDimension.fromMap(Map<String, dynamic> map) {
    return GetScalingRulesRuleHybridMetricDimension(
      dimensionKey: (map['dimensionKey'] as String).input(),
      dimensionValue: (map['dimensionValue'] as String).input(),
    );
  }
}

