// ignore_for_file: unused_element, unnecessary_cast


class ScalingRuleStepAdjustment {
  /// The lower bound of step.
  final String? metricIntervalLowerBound;
  /// The upper bound of step.
  final String? metricIntervalUpperBound;
  /// The adjust value of step.
  final int? scalingAdjustment;

  /// Creates a new [ScalingRuleStepAdjustment].
  /// [metricIntervalLowerBound] The lower bound of step.
  /// [metricIntervalUpperBound] The upper bound of step.
  /// [scalingAdjustment] The adjust value of step.
  ScalingRuleStepAdjustment({
    this.metricIntervalLowerBound,
    this.metricIntervalUpperBound,
    this.scalingAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricIntervalLowerBound': ?metricIntervalLowerBound,
      'metricIntervalUpperBound': ?metricIntervalUpperBound,
      'scalingAdjustment': ?scalingAdjustment,
    };
  }

  factory ScalingRuleStepAdjustment.fromMap(Map<String, dynamic> map) {
    return ScalingRuleStepAdjustment(
      metricIntervalLowerBound: map['metricIntervalLowerBound'] == null ? null : map['metricIntervalLowerBound'] as String,
      metricIntervalUpperBound: map['metricIntervalUpperBound'] == null ? null : map['metricIntervalUpperBound'] as String,
      scalingAdjustment: map['scalingAdjustment'] == null ? null : map['scalingAdjustment'] as int,
    );
  }
}

