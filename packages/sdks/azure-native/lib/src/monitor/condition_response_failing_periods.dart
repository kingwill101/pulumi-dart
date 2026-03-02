// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The minimum number of violations required within the selected lookback time window required to raise an alert. Relevant only for rules of the kind LogAlert.
class ConditionResponseFailingPeriods {
  /// The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods. Default value is 1
  final pulumi.Input<double>? minFailingPeriodsToAlert;
  /// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points. Default value is 1
  final pulumi.Input<double>? numberOfEvaluationPeriods;

  /// Creates a new [ConditionResponseFailingPeriods].
  /// [minFailingPeriodsToAlert] The number of violations to trigger an alert. Should be smaller or equal to numberOfEvaluationPeriods. Default value is 1
  /// [numberOfEvaluationPeriods] The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points. Default value is 1
  ConditionResponseFailingPeriods({
    this.minFailingPeriodsToAlert,
    this.numberOfEvaluationPeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minFailingPeriodsToAlert': ?minFailingPeriodsToAlert,
      'numberOfEvaluationPeriods': ?numberOfEvaluationPeriods,
    };
  }

  factory ConditionResponseFailingPeriods.fromMap(Map<String, dynamic> map) {
    return ConditionResponseFailingPeriods(
      minFailingPeriodsToAlert: map['minFailingPeriodsToAlert'] == null ? null : (map['minFailingPeriodsToAlert']! as double).input(),
      numberOfEvaluationPeriods: map['numberOfEvaluationPeriods'] == null ? null : (map['numberOfEvaluationPeriods']! as double).input(),
    );
  }
}

