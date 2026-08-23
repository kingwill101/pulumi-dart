// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The minimum number of violations required within the selected lookback time window required to raise an alert. Relevant only for rules of the kind LogAlert.
class ConditionFailingPeriodsResponse {
  /// The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods. Default value is 1
  final pulumi.Input<double>? minFailingPeriodsToAlert;
  /// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points. Default value is 1
  final pulumi.Input<double>? numberOfEvaluationPeriods;

  /// Creates a new [ConditionFailingPeriodsResponse].
  /// [minFailingPeriodsToAlert] The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods. Default value is 1
  /// [numberOfEvaluationPeriods] The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points. Default value is 1
  const ConditionFailingPeriodsResponse({
    this.minFailingPeriodsToAlert,
    this.numberOfEvaluationPeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minFailingPeriodsToAlert': ?minFailingPeriodsToAlert,
      'numberOfEvaluationPeriods': ?numberOfEvaluationPeriods,
    };
  }

  factory ConditionFailingPeriodsResponse.fromMap(Map<String, dynamic> map) {
    return ConditionFailingPeriodsResponse(
      minFailingPeriodsToAlert: (() { final guardedValue = map['minFailingPeriodsToAlert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      numberOfEvaluationPeriods: (() { final guardedValue = map['numberOfEvaluationPeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
