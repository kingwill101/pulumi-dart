// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingRuleStepAdjustment {
  /// The lower bound of step.
  final pulumi.Input<String>? metricIntervalLowerBound;
  /// The upper bound of step.
  final pulumi.Input<String>? metricIntervalUpperBound;
  /// The adjust value of step.
  final pulumi.Input<int>? scalingAdjustment;

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
      metricIntervalLowerBound: map['metricIntervalLowerBound'] == null ? null : (map['metricIntervalLowerBound']! as String).input(),
      metricIntervalUpperBound: map['metricIntervalUpperBound'] == null ? null : (map['metricIntervalUpperBound']! as String).input(),
      scalingAdjustment: map['scalingAdjustment'] == null ? null : (map['scalingAdjustment']! as int).input(),
    );
  }
}

