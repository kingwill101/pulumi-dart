// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_rule_alarm_dimension.dart';
import 'scaling_rule_hybrid_metric.dart';
import 'scaling_rule_step_adjustment.dart';

/// {@template pulumi_ess_scaling_rule_scaling_rule_args_doc}
/// The set of arguments for ScalingRule.
/// {@endtemplate}
/// {@macro pulumi_ess_scaling_rule_scaling_rule_args_doc}
class ScalingRuleArgs {
  /// Adjustment mode of a scaling rule. Optional values:
  /// - QuantityChangeInCapacity: It is used to increase or decrease a specified number of ECS instances.
  /// - PercentChangeInCapacity: It is used to increase or decrease a specified proportion of ECS instances.
  /// - TotalCapacity: It is used to adjust the quantity of ECS instances in the current scaling group to a specified value.
  final pulumi.Input<String>? adjustmentType;

  /// The number of ECS instances to be adjusted in the scaling rule. This parameter is required and applicable only to simple scaling rules. The number of ECS instances to be adjusted in a single scaling activity cannot exceed 500. Value range:
  /// - QuantityChangeInCapacity：(0, 500] U (-500, 0]
  /// - PercentChangeInCapacity：[0, 10000] U [-100, 0]
  /// - TotalCapacity：[0, 1000]
  final pulumi.Input<int>? adjustmentValue;

  /// AlarmDimension for StepScalingRule. See `alarm_dimension` below.
  final pulumi.Input<ScalingRuleAlarmDimension>? alarmDimension;

  /// The cooldown time of the scaling rule. This parameter is applicable only to simple scaling rules. Value range: [0, 86,400], in seconds. The default value is empty，if not set, the return value will be 0, which is the default value of integer.
  final pulumi.Input<int>? cooldown;

  /// Indicates whether scale in by the target tracking policy is disabled. Default to false.
  final pulumi.Input<bool>? disableScaleIn;

  /// The estimated time, in seconds, until a newly launched instance will contribute CloudMonitor metrics. Default to 300.
  final pulumi.Input<int>? estimatedInstanceWarmup;

  /// The Hybrid Cloud Monitoring metrics. See `hybrid_metrics` below.
  final pulumi.Input<List<ScalingRuleHybridMetric>>? hybridMetrics;

  /// The ID of the Hybrid Cloud Monitoring metric repository.
  final pulumi.Input<String>? hybridMonitorNamespace;

  /// The maximum number of ECS instances that can be added to the scaling group. If you specify InitialMaxSize, you must also specify PredictiveValueBehavior.
  final pulumi.Input<int>? initialMaxSize;

  /// A CloudMonitor metric name.
  final pulumi.Input<String>? metricName;

  /// The type of the metric. Valid values: system, custom, hybrid.
  final pulumi.Input<String>? metricType;

  /// The minimum number of instances that must be scaled. This parameter takes effect if you set ScalingRuleType to SimpleScalingRule or StepScalingRule, and AdjustmentType to PercentChangeInCapacity.
  final pulumi.Input<int>? minAdjustmentMagnitude;

  /// The mode of the predictive scaling rule. Valid values: PredictAndScale, PredictOnly.
  final pulumi.Input<String>? predictiveScalingMode;

  /// The amount of buffer time before the prediction task runs. By default, all prediction tasks that are automatically created by a predictive scaling rule run on the hour. You can specify a buffer time to run prediction tasks and prepare resources in advance. Valid values: 0 to 60. Unit: minutes.
  final pulumi.Input<int>? predictiveTaskBufferTime;

  /// The action on the predicted maximum value. Valid values: MaxOverridePredictiveValue, PredictiveValueOverrideMax, PredictiveValueOverrideMaxWithBuffer.
  final pulumi.Input<String>? predictiveValueBehavior;

  /// The ratio based on which the predicted value is increased if you set PredictiveValueBehavior to PredictiveValueOverrideMaxWithBuffer. If the predicted value increased by this ratio is greater than the initial maximum capacity, the increased value is used as the maximum value for prediction tasks. Valid values: 0 to 100.
  final pulumi.Input<int>? predictiveValueBuffer;

  /// The number of consecutive times that the event-triggered task created for scale-ins must meet the threshold conditions before an alert is triggered. After a target tracking scaling rule is created, an event-triggered task is automatically created and associated with the target tracking scaling rule.
  final pulumi.Input<int>? scaleInEvaluationCount;

  /// The number of consecutive times that the event-triggered task created for scale-outs must meet the threshold conditions before an alert is triggered. After a target tracking scaling rule is created, an event-triggered task is automatically created and associated with the target tracking scaling rule.
  final pulumi.Input<int>? scaleOutEvaluationCount;

  /// ID of the scaling group of a scaling rule.
  final pulumi.Input<String> scalingGroupId;

  /// Name shown for the scaling rule, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is scaling rule id.
  final pulumi.Input<String>? scalingRuleName;

  /// The scaling rule type, either "SimpleScalingRule", "TargetTrackingScalingRule", "StepScalingRule", "PredictiveScalingRule". Default to "SimpleScalingRule".
  final pulumi.Input<String>? scalingRuleType;

  /// Steps for StepScalingRule. See `step_adjustment` below.
  final pulumi.Input<List<ScalingRuleStepAdjustment>>? stepAdjustments;

  /// The target value for the metric.
  final pulumi.Input<double>? targetValue;

  /// Creates a new [ScalingRuleArgs].
  /// [adjustmentType] Adjustment mode of a scaling rule. Optional values:
  /// [adjustmentValue] The number of ECS instances to be adjusted in the scaling rule. This parameter is required and applicable only to simple scaling rules. The number of ECS instances to be adjusted in a single scaling activity cannot exceed 500. Value range:
  /// [alarmDimension] AlarmDimension for StepScalingRule. See `alarm_dimension` below.
  /// [cooldown] The cooldown time of the scaling rule. This parameter is applicable only to simple scaling rules. Value range: [0, 86,400], in seconds. The default value is empty，if not set, the return value will be 0, which is the default value of integer.
  /// [disableScaleIn] Indicates whether scale in by the target tracking policy is disabled. Default to false.
  /// [estimatedInstanceWarmup] The estimated time, in seconds, until a newly launched instance will contribute CloudMonitor metrics. Default to 300.
  /// [hybridMetrics] The Hybrid Cloud Monitoring metrics. See `hybrid_metrics` below.
  /// [hybridMonitorNamespace] The ID of the Hybrid Cloud Monitoring metric repository.
  /// [initialMaxSize] The maximum number of ECS instances that can be added to the scaling group. If you specify InitialMaxSize, you must also specify PredictiveValueBehavior.
  /// [metricName] A CloudMonitor metric name.
  /// [metricType] The type of the metric. Valid values: system, custom, hybrid.
  /// [minAdjustmentMagnitude] The minimum number of instances that must be scaled. This parameter takes effect if you set ScalingRuleType to SimpleScalingRule or StepScalingRule, and AdjustmentType to PercentChangeInCapacity.
  /// [predictiveScalingMode] The mode of the predictive scaling rule. Valid values: PredictAndScale, PredictOnly.
  /// [predictiveTaskBufferTime] The amount of buffer time before the prediction task runs. By default, all prediction tasks that are automatically created by a predictive scaling rule run on the hour. You can specify a buffer time to run prediction tasks and prepare resources in advance. Valid values: 0 to 60. Unit: minutes.
  /// [predictiveValueBehavior] The action on the predicted maximum value. Valid values: MaxOverridePredictiveValue, PredictiveValueOverrideMax, PredictiveValueOverrideMaxWithBuffer.
  /// [predictiveValueBuffer] The ratio based on which the predicted value is increased if you set PredictiveValueBehavior to PredictiveValueOverrideMaxWithBuffer. If the predicted value increased by this ratio is greater than the initial maximum capacity, the increased value is used as the maximum value for prediction tasks. Valid values: 0 to 100.
  /// [scaleInEvaluationCount] The number of consecutive times that the event-triggered task created for scale-ins must meet the threshold conditions before an alert is triggered. After a target tracking scaling rule is created, an event-triggered task is automatically created and associated with the target tracking scaling rule.
  /// [scaleOutEvaluationCount] The number of consecutive times that the event-triggered task created for scale-outs must meet the threshold conditions before an alert is triggered. After a target tracking scaling rule is created, an event-triggered task is automatically created and associated with the target tracking scaling rule.
  /// [scalingGroupId] ID of the scaling group of a scaling rule.
  /// [scalingRuleName] Name shown for the scaling rule, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is scaling rule id.
  /// [scalingRuleType] The scaling rule type, either "SimpleScalingRule", "TargetTrackingScalingRule", "StepScalingRule", "PredictiveScalingRule". Default to "SimpleScalingRule".
  /// [stepAdjustments] Steps for StepScalingRule. See `step_adjustment` below.
  /// [targetValue] The target value for the metric.
  ScalingRuleArgs({
    this.adjustmentType,
    this.adjustmentValue,
    this.alarmDimension,
    this.cooldown,
    this.disableScaleIn,
    this.estimatedInstanceWarmup,
    this.hybridMetrics,
    this.hybridMonitorNamespace,
    this.initialMaxSize,
    this.metricName,
    this.metricType,
    this.minAdjustmentMagnitude,
    this.predictiveScalingMode,
    this.predictiveTaskBufferTime,
    this.predictiveValueBehavior,
    this.predictiveValueBuffer,
    this.scaleInEvaluationCount,
    this.scaleOutEvaluationCount,
    required this.scalingGroupId,
    this.scalingRuleName,
    this.scalingRuleType,
    this.stepAdjustments,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentType': ?adjustmentType,
      'adjustmentValue': ?adjustmentValue,
      'alarmDimension':
          ?pulumi.Input.mapOptionalInputValue<
            ScalingRuleAlarmDimension,
            Map<String, dynamic>
          >(alarmDimension, (value) => value.toMap()),
      'cooldown': ?cooldown,
      'disableScaleIn': ?disableScaleIn,
      'estimatedInstanceWarmup': ?estimatedInstanceWarmup,
      'hybridMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScalingRuleHybridMetric>,
            List<Map<String, dynamic>>
          >(
            hybridMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  ScalingRuleHybridMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hybridMonitorNamespace': ?hybridMonitorNamespace,
      'initialMaxSize': ?initialMaxSize,
      'metricName': ?metricName,
      'metricType': ?metricType,
      'minAdjustmentMagnitude': ?minAdjustmentMagnitude,
      'predictiveScalingMode': ?predictiveScalingMode,
      'predictiveTaskBufferTime': ?predictiveTaskBufferTime,
      'predictiveValueBehavior': ?predictiveValueBehavior,
      'predictiveValueBuffer': ?predictiveValueBuffer,
      'scaleInEvaluationCount': ?scaleInEvaluationCount,
      'scaleOutEvaluationCount': ?scaleOutEvaluationCount,
      'scalingGroupId': scalingGroupId,
      'scalingRuleName': ?scalingRuleName,
      'scalingRuleType': ?scalingRuleType,
      'stepAdjustments':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScalingRuleStepAdjustment>,
            List<Map<String, dynamic>>
          >(
            stepAdjustments,
            (value) =>
                pulumi.Input.encodeList<
                  ScalingRuleStepAdjustment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetValue': ?targetValue,
    };
  }

  factory ScalingRuleArgs.fromMap(Map<String, dynamic> map) {
    return ScalingRuleArgs(
      adjustmentType: (() {
        final guardedValue = map['adjustmentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adjustmentValue: (() {
        final guardedValue = map['adjustmentValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      alarmDimension: (() {
        final guardedValue = map['alarmDimension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ScalingRuleAlarmDimension.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cooldown: (() {
        final guardedValue = map['cooldown'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      disableScaleIn: (() {
        final guardedValue = map['disableScaleIn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      estimatedInstanceWarmup: (() {
        final guardedValue = map['estimatedInstanceWarmup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      hybridMetrics: (() {
        final guardedValue = map['hybridMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScalingRuleHybridMetric>(
            guardedValue,
            (value) => ScalingRuleHybridMetric.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      hybridMonitorNamespace: (() {
        final guardedValue = map['hybridMonitorNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialMaxSize: (() {
        final guardedValue = map['initialMaxSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      metricName: (() {
        final guardedValue = map['metricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricType: (() {
        final guardedValue = map['metricType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minAdjustmentMagnitude: (() {
        final guardedValue = map['minAdjustmentMagnitude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      predictiveScalingMode: (() {
        final guardedValue = map['predictiveScalingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predictiveTaskBufferTime: (() {
        final guardedValue = map['predictiveTaskBufferTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      predictiveValueBehavior: (() {
        final guardedValue = map['predictiveValueBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predictiveValueBuffer: (() {
        final guardedValue = map['predictiveValueBuffer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scaleInEvaluationCount: (() {
        final guardedValue = map['scaleInEvaluationCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scaleOutEvaluationCount: (() {
        final guardedValue = map['scaleOutEvaluationCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
      scalingRuleName: (() {
        final guardedValue = map['scalingRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingRuleType: (() {
        final guardedValue = map['scalingRuleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stepAdjustments: (() {
        final guardedValue = map['stepAdjustments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScalingRuleStepAdjustment>(
            guardedValue,
            (value) => ScalingRuleStepAdjustment.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      targetValue: (() {
        final guardedValue = map['targetValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
