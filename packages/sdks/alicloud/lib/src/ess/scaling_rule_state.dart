// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_rule_alarm_dimension.dart';
import 'scaling_rule_hybrid_metric.dart';
import 'scaling_rule_step_adjustment.dart';

/// Input properties used for looking up and filtering ScalingRule resources.
class ScalingRuleState {
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
  /// The unique identifier of the scaling rule.
  final pulumi.Input<String>? ari;
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
  final pulumi.Input<String>? scalingGroupId;
  /// Name shown for the scaling rule, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is scaling rule id.
  final pulumi.Input<String>? scalingRuleName;
  /// The scaling rule type, either "SimpleScalingRule", "TargetTrackingScalingRule", "StepScalingRule", "PredictiveScalingRule". Default to "SimpleScalingRule".
  final pulumi.Input<String>? scalingRuleType;
  /// Steps for StepScalingRule. See `step_adjustment` below.
  final pulumi.Input<List<ScalingRuleStepAdjustment>>? stepAdjustments;
  /// The target value for the metric.
  final pulumi.Input<double>? targetValue;

  /// Creates a new [ScalingRuleState].
  /// [adjustmentType] Adjustment mode of a scaling rule. Optional values:
  /// [adjustmentValue] The number of ECS instances to be adjusted in the scaling rule. This parameter is required and applicable only to simple scaling rules. The number of ECS instances to be adjusted in a single scaling activity cannot exceed 500. Value range:
  /// [alarmDimension] AlarmDimension for StepScalingRule. See `alarm_dimension` below.
  /// [ari] The unique identifier of the scaling rule.
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
  ScalingRuleState({
    this.adjustmentType,
    this.adjustmentValue,
    this.alarmDimension,
    this.ari,
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
    this.scalingGroupId,
    this.scalingRuleName,
    this.scalingRuleType,
    this.stepAdjustments,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentType': ?adjustmentType,
      'adjustmentValue': ?adjustmentValue,
      'alarmDimension': ?pulumi.Input.mapOptionalInputValue<ScalingRuleAlarmDimension, Map<String, dynamic>>(alarmDimension, (value) => value.toMap()),
      'ari': ?ari,
      'cooldown': ?cooldown,
      'disableScaleIn': ?disableScaleIn,
      'estimatedInstanceWarmup': ?estimatedInstanceWarmup,
      'hybridMetrics': ?pulumi.Input.mapOptionalInputValue<List<ScalingRuleHybridMetric>, List<Map<String, dynamic>>>(hybridMetrics, (value) => pulumi.Input.encodeList<ScalingRuleHybridMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'scalingGroupId': ?scalingGroupId,
      'scalingRuleName': ?scalingRuleName,
      'scalingRuleType': ?scalingRuleType,
      'stepAdjustments': ?pulumi.Input.mapOptionalInputValue<List<ScalingRuleStepAdjustment>, List<Map<String, dynamic>>>(stepAdjustments, (value) => pulumi.Input.encodeList<ScalingRuleStepAdjustment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetValue': ?targetValue,
    };
  }

  factory ScalingRuleState.fromMap(Map<String, dynamic> map) {
    return ScalingRuleState(
      adjustmentType: map['adjustmentType'] == null ? null : (map['adjustmentType']! as String).input(),
      adjustmentValue: map['adjustmentValue'] == null ? null : (map['adjustmentValue']! as int).input(),
      alarmDimension: map['alarmDimension'] == null ? null : (ScalingRuleAlarmDimension.fromMap((map['alarmDimension']! as Map).cast<String, dynamic>())).input(),
      ari: map['ari'] == null ? null : (map['ari']! as String).input(),
      cooldown: map['cooldown'] == null ? null : (map['cooldown']! as int).input(),
      disableScaleIn: map['disableScaleIn'] == null ? null : (map['disableScaleIn']! as bool).input(),
      estimatedInstanceWarmup: map['estimatedInstanceWarmup'] == null ? null : (map['estimatedInstanceWarmup']! as int).input(),
      hybridMetrics: map['hybridMetrics'] == null ? null : (pulumi.Input.decodeList<ScalingRuleHybridMetric>(map['hybridMetrics']!, (value) => ScalingRuleHybridMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hybridMonitorNamespace: map['hybridMonitorNamespace'] == null ? null : (map['hybridMonitorNamespace']! as String).input(),
      initialMaxSize: map['initialMaxSize'] == null ? null : (map['initialMaxSize']! as int).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      metricType: map['metricType'] == null ? null : (map['metricType']! as String).input(),
      minAdjustmentMagnitude: map['minAdjustmentMagnitude'] == null ? null : (map['minAdjustmentMagnitude']! as int).input(),
      predictiveScalingMode: map['predictiveScalingMode'] == null ? null : (map['predictiveScalingMode']! as String).input(),
      predictiveTaskBufferTime: map['predictiveTaskBufferTime'] == null ? null : (map['predictiveTaskBufferTime']! as int).input(),
      predictiveValueBehavior: map['predictiveValueBehavior'] == null ? null : (map['predictiveValueBehavior']! as String).input(),
      predictiveValueBuffer: map['predictiveValueBuffer'] == null ? null : (map['predictiveValueBuffer']! as int).input(),
      scaleInEvaluationCount: map['scaleInEvaluationCount'] == null ? null : (map['scaleInEvaluationCount']! as int).input(),
      scaleOutEvaluationCount: map['scaleOutEvaluationCount'] == null ? null : (map['scaleOutEvaluationCount']! as int).input(),
      scalingGroupId: map['scalingGroupId'] == null ? null : (map['scalingGroupId']! as String).input(),
      scalingRuleName: map['scalingRuleName'] == null ? null : (map['scalingRuleName']! as String).input(),
      scalingRuleType: map['scalingRuleType'] == null ? null : (map['scalingRuleType']! as String).input(),
      stepAdjustments: map['stepAdjustments'] == null ? null : (pulumi.Input.decodeList<ScalingRuleStepAdjustment>(map['stepAdjustments']!, (value) => ScalingRuleStepAdjustment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetValue: map['targetValue'] == null ? null : (map['targetValue']! as double).input(),
    );
  }
}

