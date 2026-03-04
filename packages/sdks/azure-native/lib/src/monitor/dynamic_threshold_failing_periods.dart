// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The minimum number of violations required within the selected lookback time window required to raise an alert.
class DynamicThresholdFailingPeriods {
  /// The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods.
  final pulumi.Input<double> minFailingPeriodsToAlert;

  /// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points.
  final pulumi.Input<double> numberOfEvaluationPeriods;

  /// Creates a new [DynamicThresholdFailingPeriods].
  /// [minFailingPeriodsToAlert] The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods.
  /// [numberOfEvaluationPeriods] The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points.
  DynamicThresholdFailingPeriods({
    required this.minFailingPeriodsToAlert,
    required this.numberOfEvaluationPeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minFailingPeriodsToAlert': minFailingPeriodsToAlert,
      'numberOfEvaluationPeriods': numberOfEvaluationPeriods,
    };
  }

  factory DynamicThresholdFailingPeriods.fromMap(Map<String, dynamic> map) {
    return DynamicThresholdFailingPeriods(
      minFailingPeriodsToAlert: pulumi.Input.fromValue(
        map['minFailingPeriodsToAlert'] as double,
      ),
      numberOfEvaluationPeriods: pulumi.Input.fromValue(
        map['numberOfEvaluationPeriods'] as double,
      ),
    );
  }
}
