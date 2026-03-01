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
    pulumi.Output<String>? adjustmentType,
    pulumi.Output<int>? adjustmentValue,
    pulumi.Output<ScalingRuleAlarmDimension>? alarmDimension,
    pulumi.Output<int>? cooldown,
    pulumi.Output<bool>? disableScaleIn,
    pulumi.Output<int>? estimatedInstanceWarmup,
    pulumi.Output<List<ScalingRuleHybridMetric>>? hybridMetrics,
    pulumi.Output<String>? hybridMonitorNamespace,
    pulumi.Output<int>? initialMaxSize,
    pulumi.Output<String>? metricName,
    pulumi.Output<String>? metricType,
    pulumi.Output<int>? minAdjustmentMagnitude,
    pulumi.Output<String>? predictiveScalingMode,
    pulumi.Output<int>? predictiveTaskBufferTime,
    pulumi.Output<String>? predictiveValueBehavior,
    pulumi.Output<int>? predictiveValueBuffer,
    pulumi.Output<int>? scaleInEvaluationCount,
    pulumi.Output<int>? scaleOutEvaluationCount,
    required pulumi.Output<String> scalingGroupId,
    pulumi.Output<String>? scalingRuleName,
    pulumi.Output<String>? scalingRuleType,
    pulumi.Output<List<ScalingRuleStepAdjustment>>? stepAdjustments,
    pulumi.Output<double>? targetValue,
  }) :
      adjustmentType = pulumi.Input.asOptionalInput<String>(adjustmentType),
      adjustmentValue = pulumi.Input.asOptionalInput<int>(adjustmentValue),
      alarmDimension = pulumi.Input.asOptionalInput<ScalingRuleAlarmDimension>(alarmDimension),
      cooldown = pulumi.Input.asOptionalInput<int>(cooldown),
      disableScaleIn = pulumi.Input.asOptionalInput<bool>(disableScaleIn),
      estimatedInstanceWarmup = pulumi.Input.asOptionalInput<int>(estimatedInstanceWarmup),
      hybridMetrics = pulumi.Input.asOptionalInput<List<ScalingRuleHybridMetric>>(hybridMetrics),
      hybridMonitorNamespace = pulumi.Input.asOptionalInput<String>(hybridMonitorNamespace),
      initialMaxSize = pulumi.Input.asOptionalInput<int>(initialMaxSize),
      metricName = pulumi.Input.asOptionalInput<String>(metricName),
      metricType = pulumi.Input.asOptionalInput<String>(metricType),
      minAdjustmentMagnitude = pulumi.Input.asOptionalInput<int>(minAdjustmentMagnitude),
      predictiveScalingMode = pulumi.Input.asOptionalInput<String>(predictiveScalingMode),
      predictiveTaskBufferTime = pulumi.Input.asOptionalInput<int>(predictiveTaskBufferTime),
      predictiveValueBehavior = pulumi.Input.asOptionalInput<String>(predictiveValueBehavior),
      predictiveValueBuffer = pulumi.Input.asOptionalInput<int>(predictiveValueBuffer),
      scaleInEvaluationCount = pulumi.Input.asOptionalInput<int>(scaleInEvaluationCount),
      scaleOutEvaluationCount = pulumi.Input.asOptionalInput<int>(scaleOutEvaluationCount),
      scalingGroupId = pulumi.Input.asInput<String>(scalingGroupId),
      scalingRuleName = pulumi.Input.asOptionalInput<String>(scalingRuleName),
      scalingRuleType = pulumi.Input.asOptionalInput<String>(scalingRuleType),
      stepAdjustments = pulumi.Input.asOptionalInput<List<ScalingRuleStepAdjustment>>(stepAdjustments),
      targetValue = pulumi.Input.asOptionalInput<double>(targetValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentType': ?adjustmentType,
      'adjustmentValue': ?adjustmentValue,
      'alarmDimension': ?pulumi.Input.mapOptionalInputValue<ScalingRuleAlarmDimension, Map<String, dynamic>>(alarmDimension, (value) => value.toMap()),
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
      'scalingGroupId': scalingGroupId,
      'scalingRuleName': ?scalingRuleName,
      'scalingRuleType': ?scalingRuleType,
      'stepAdjustments': ?pulumi.Input.mapOptionalInputValue<List<ScalingRuleStepAdjustment>, List<Map<String, dynamic>>>(stepAdjustments, (value) => pulumi.Input.encodeList<ScalingRuleStepAdjustment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetValue': ?targetValue,
    };
  }

  factory ScalingRuleArgs.fromMap(Map<String, dynamic> map) {
    return ScalingRuleArgs(
      adjustmentType: map['adjustmentType'] == null ? null : pulumi.Output.create<String>(map['adjustmentType'] as String),
      adjustmentValue: map['adjustmentValue'] == null ? null : pulumi.Output.create<int>(map['adjustmentValue'] as int),
      alarmDimension: map['alarmDimension'] == null ? null : pulumi.Output.create<ScalingRuleAlarmDimension>(ScalingRuleAlarmDimension.fromMap((map['alarmDimension'] as Map).cast<String, dynamic>())),
      cooldown: map['cooldown'] == null ? null : pulumi.Output.create<int>(map['cooldown'] as int),
      disableScaleIn: map['disableScaleIn'] == null ? null : pulumi.Output.create<bool>(map['disableScaleIn'] as bool),
      estimatedInstanceWarmup: map['estimatedInstanceWarmup'] == null ? null : pulumi.Output.create<int>(map['estimatedInstanceWarmup'] as int),
      hybridMetrics: map['hybridMetrics'] == null ? null : pulumi.Output.create<List<ScalingRuleHybridMetric>>(pulumi.Input.decodeList<ScalingRuleHybridMetric>(map['hybridMetrics'], (value) => ScalingRuleHybridMetric.fromMap((value as Map).cast<String, dynamic>()))),
      hybridMonitorNamespace: map['hybridMonitorNamespace'] == null ? null : pulumi.Output.create<String>(map['hybridMonitorNamespace'] as String),
      initialMaxSize: map['initialMaxSize'] == null ? null : pulumi.Output.create<int>(map['initialMaxSize'] as int),
      metricName: map['metricName'] == null ? null : pulumi.Output.create<String>(map['metricName'] as String),
      metricType: map['metricType'] == null ? null : pulumi.Output.create<String>(map['metricType'] as String),
      minAdjustmentMagnitude: map['minAdjustmentMagnitude'] == null ? null : pulumi.Output.create<int>(map['minAdjustmentMagnitude'] as int),
      predictiveScalingMode: map['predictiveScalingMode'] == null ? null : pulumi.Output.create<String>(map['predictiveScalingMode'] as String),
      predictiveTaskBufferTime: map['predictiveTaskBufferTime'] == null ? null : pulumi.Output.create<int>(map['predictiveTaskBufferTime'] as int),
      predictiveValueBehavior: map['predictiveValueBehavior'] == null ? null : pulumi.Output.create<String>(map['predictiveValueBehavior'] as String),
      predictiveValueBuffer: map['predictiveValueBuffer'] == null ? null : pulumi.Output.create<int>(map['predictiveValueBuffer'] as int),
      scaleInEvaluationCount: map['scaleInEvaluationCount'] == null ? null : pulumi.Output.create<int>(map['scaleInEvaluationCount'] as int),
      scaleOutEvaluationCount: map['scaleOutEvaluationCount'] == null ? null : pulumi.Output.create<int>(map['scaleOutEvaluationCount'] as int),
      scalingGroupId: pulumi.Output.create<String>(map['scalingGroupId'] as String),
      scalingRuleName: map['scalingRuleName'] == null ? null : pulumi.Output.create<String>(map['scalingRuleName'] as String),
      scalingRuleType: map['scalingRuleType'] == null ? null : pulumi.Output.create<String>(map['scalingRuleType'] as String),
      stepAdjustments: map['stepAdjustments'] == null ? null : pulumi.Output.create<List<ScalingRuleStepAdjustment>>(pulumi.Input.decodeList<ScalingRuleStepAdjustment>(map['stepAdjustments'], (value) => ScalingRuleStepAdjustment.fromMap((value as Map).cast<String, dynamic>()))),
      targetValue: map['targetValue'] == null ? null : pulumi.Output.create<double>(map['targetValue'] as double),
    );
  }
}

