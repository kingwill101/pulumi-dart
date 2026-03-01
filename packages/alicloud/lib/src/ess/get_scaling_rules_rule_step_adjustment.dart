// ignore_for_file: unused_element, unnecessary_cast


class GetScalingRulesRuleStepAdjustment {
  /// (Available since v1.250.0) The lower limit of each step adjustment. Valid values: -9.999999E18 to 9.999999E18.
  final String metricIntervalLowerBound;
  /// (Available since v1.250.0) The upper limit of each step adjustment. Valid values: -9.999999E18 to 9.999999E18.
  final String metricIntervalUpperBound;
  /// (Available since v1.250.0) The number of instances that are scaled in each step adjustment.
  final int scalingAdjustment;

  /// Creates a new [GetScalingRulesRuleStepAdjustment].
  /// [metricIntervalLowerBound] (Available since v1.250.0) The lower limit of each step adjustment. Valid values: -9.999999E18 to 9.999999E18.
  /// [metricIntervalUpperBound] (Available since v1.250.0) The upper limit of each step adjustment. Valid values: -9.999999E18 to 9.999999E18.
  /// [scalingAdjustment] (Available since v1.250.0) The number of instances that are scaled in each step adjustment.
  GetScalingRulesRuleStepAdjustment({
    required this.metricIntervalLowerBound,
    required this.metricIntervalUpperBound,
    required this.scalingAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricIntervalLowerBound': metricIntervalLowerBound,
      'metricIntervalUpperBound': metricIntervalUpperBound,
      'scalingAdjustment': scalingAdjustment,
    };
  }

  factory GetScalingRulesRuleStepAdjustment.fromMap(Map<String, dynamic> map) {
    return GetScalingRulesRuleStepAdjustment(
      metricIntervalLowerBound: map['metricIntervalLowerBound'] as String,
      metricIntervalUpperBound: map['metricIntervalUpperBound'] as String,
      scalingAdjustment: map['scalingAdjustment'] as int,
    );
  }
}

