// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScalingRulesRuleStepAdjustment {
  /// (Available since v1.250.0) The lower limit of each step adjustment. Valid values: -9.999999E18 to 9.999999E18.
  final pulumi.Input<String> metricIntervalLowerBound;

  /// (Available since v1.250.0) The upper limit of each step adjustment. Valid values: -9.999999E18 to 9.999999E18.
  final pulumi.Input<String> metricIntervalUpperBound;

  /// (Available since v1.250.0) The number of instances that are scaled in each step adjustment.
  final pulumi.Input<int> scalingAdjustment;

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
      metricIntervalLowerBound: pulumi.Input.fromValue(
        map['metricIntervalLowerBound'] as String,
      ),
      metricIntervalUpperBound: pulumi.Input.fromValue(
        map['metricIntervalUpperBound'] as String,
      ),
      scalingAdjustment: pulumi.Input.fromValue(
        map['scalingAdjustment'] as int,
      ),
    );
  }
}
