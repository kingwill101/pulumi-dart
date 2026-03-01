// ignore_for_file: unused_element, unnecessary_cast


/// The minimum number of violations required within the selected lookback time window required to raise an alert.
class DynamicThresholdFailingPeriodsResponse {
  /// The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods.
  final double minFailingPeriodsToAlert;
  /// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points.
  final double numberOfEvaluationPeriods;

  /// Creates a new [DynamicThresholdFailingPeriodsResponse].
  /// [minFailingPeriodsToAlert] The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods.
  /// [numberOfEvaluationPeriods] The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points.
  DynamicThresholdFailingPeriodsResponse({
    required this.minFailingPeriodsToAlert,
    required this.numberOfEvaluationPeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minFailingPeriodsToAlert': minFailingPeriodsToAlert,
      'numberOfEvaluationPeriods': numberOfEvaluationPeriods,
    };
  }

  factory DynamicThresholdFailingPeriodsResponse.fromMap(Map<String, dynamic> map) {
    return DynamicThresholdFailingPeriodsResponse(
      minFailingPeriodsToAlert: map['minFailingPeriodsToAlert'] as double,
      numberOfEvaluationPeriods: map['numberOfEvaluationPeriods'] as double,
    );
  }
}

