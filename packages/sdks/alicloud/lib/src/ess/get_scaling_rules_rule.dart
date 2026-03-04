// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_rules_rule_hybrid_metric.dart';
import 'get_scaling_rules_rule_step_adjustment.dart';

class GetScalingRulesRule {
  /// Adjustment type of the scaling rule.
  final pulumi.Input<String> adjustmentType;

  /// Adjustment value of the scaling rule.
  final pulumi.Input<int> adjustmentValue;

  /// Cooldown time of the scaling rule.
  final pulumi.Input<int> cooldown;

  /// (Available since v1.250.0) Indicates whether scale-in is disabled. This parameter is available only if you set ScalingRuleType to TargetTrackingScalingRule. Valid values: true, false.
  final pulumi.Input<bool> disableScaleIn;

  /// (Available since v1.250.0) The warm-up period during which a series of preparation measures are taken on new instances. Auto Scaling does not monitor the metric data of instances that are being warmed up.
  final pulumi.Input<int> estimatedInstanceWarmup;

  /// (Available since v1.250.0) The Hybrid Cloud Monitoring metrics.
  final pulumi.Input<List<GetScalingRulesRuleHybridMetric>> hybridMetrics;

  /// (Available since v1.250.0) The ID of the Hybrid Cloud Monitoring namespace.
  final pulumi.Input<String> hybridMonitorNamespace;

  /// (Available since v1.250.0) The reference ID of the metric in the metric expression.
  final pulumi.Input<String> id;

  /// (Available since v1.242.0) The maximum number of ECS instances that can be added to the scaling group.
  final pulumi.Input<int> initialMaxSize;

  /// (Available since v1.250.0) The name of the Hybrid Cloud Monitoring metric.
  final pulumi.Input<String> metricName;

  /// (Available since v1.250.0) The type of the event-triggered task that is associated with the scaling rule.
  final pulumi.Input<String> metricType;

  /// Min adjustment magnitude of scaling rule.
  final pulumi.Input<int> minAdjustmentMagnitude;

  /// Name of the scaling rule.
  final pulumi.Input<String> name;

  /// (Available since v1.242.0) The mode of the predictive scaling rule.
  final pulumi.Input<String> predictiveScalingMode;

  /// (Available since v1.242.0) The amount of buffer time before the prediction task is executed. By default, all prediction tasks that are automatically created by a predictive scaling rule are executed on the hour. You can set a buffer time to execute prediction tasks and prepare resources in advance.
  final pulumi.Input<int> predictiveTaskBufferTime;

  /// (Available since v1.242.0) The action on the predicted maximum value.
  final pulumi.Input<String> predictiveValueBehavior;

  /// (Available since v1.242.0) The ratio based on which the predicted value is increased if you set predictive_value_behavior to PredictiveValueOverrideMaxWithBuffer. If the predicted value that is increased by this ratio is greater than the initial maximum capacity, the increased value is used as the maximum value for prediction tasks.
  final pulumi.Input<int> predictiveValueBuffer;

  /// (Available since v1.250.0) After you create a target tracking scaling rule, an event-triggered task is automatically created and associated with the scaling rule. This parameter defines the number of consecutive times the alert condition must be satisfied before the event-triggered task initiates a scale-in operation.
  final pulumi.Input<int> scaleInEvaluationCount;

  /// (Available since v1.250.0) After you create a target tracking scaling rule, an event-triggered task is automatically created and associated with the scaling rule. This parameter defines the number of consecutive times the alert condition must be satisfied before the event-triggered task initiates a scale-out operation.
  final pulumi.Input<int> scaleOutEvaluationCount;

  /// Scaling group id the scaling rules belong to.
  final pulumi.Input<String> scalingGroupId;

  /// Ari of scaling rule.
  final pulumi.Input<String> scalingRuleAri;

  /// (Available since v1.250.0) The step adjustments of the step scaling rule.
  final pulumi.Input<List<GetScalingRulesRuleStepAdjustment>> stepAdjustments;

  /// (Available since v1.242.0) The target value of the metric.
  final pulumi.Input<double> targetValue;

  /// Type of scaling rule.
  final pulumi.Input<String> type;

  /// Creates a new [GetScalingRulesRule].
  /// [adjustmentType] Adjustment type of the scaling rule.
  /// [adjustmentValue] Adjustment value of the scaling rule.
  /// [cooldown] Cooldown time of the scaling rule.
  /// [disableScaleIn] (Available since v1.250.0) Indicates whether scale-in is disabled. This parameter is available only if you set ScalingRuleType to TargetTrackingScalingRule. Valid values: true, false.
  /// [estimatedInstanceWarmup] (Available since v1.250.0) The warm-up period during which a series of preparation measures are taken on new instances. Auto Scaling does not monitor the metric data of instances that are being warmed up.
  /// [hybridMetrics] (Available since v1.250.0) The Hybrid Cloud Monitoring metrics.
  /// [hybridMonitorNamespace] (Available since v1.250.0) The ID of the Hybrid Cloud Monitoring namespace.
  /// [id] (Available since v1.250.0) The reference ID of the metric in the metric expression.
  /// [initialMaxSize] (Available since v1.242.0) The maximum number of ECS instances that can be added to the scaling group.
  /// [metricName] (Available since v1.250.0) The name of the Hybrid Cloud Monitoring metric.
  /// [metricType] (Available since v1.250.0) The type of the event-triggered task that is associated with the scaling rule.
  /// [minAdjustmentMagnitude] Min adjustment magnitude of scaling rule.
  /// [name] Name of the scaling rule.
  /// [predictiveScalingMode] (Available since v1.242.0) The mode of the predictive scaling rule.
  /// [predictiveTaskBufferTime] (Available since v1.242.0) The amount of buffer time before the prediction task is executed. By default, all prediction tasks that are automatically created by a predictive scaling rule are executed on the hour. You can set a buffer time to execute prediction tasks and prepare resources in advance.
  /// [predictiveValueBehavior] (Available since v1.242.0) The action on the predicted maximum value.
  /// [predictiveValueBuffer] (Available since v1.242.0) The ratio based on which the predicted value is increased if you set predictive_value_behavior to PredictiveValueOverrideMaxWithBuffer. If the predicted value that is increased by this ratio is greater than the initial maximum capacity, the increased value is used as the maximum value for prediction tasks.
  /// [scaleInEvaluationCount] (Available since v1.250.0) After you create a target tracking scaling rule, an event-triggered task is automatically created and associated with the scaling rule. This parameter defines the number of consecutive times the alert condition must be satisfied before the event-triggered task initiates a scale-in operation.
  /// [scaleOutEvaluationCount] (Available since v1.250.0) After you create a target tracking scaling rule, an event-triggered task is automatically created and associated with the scaling rule. This parameter defines the number of consecutive times the alert condition must be satisfied before the event-triggered task initiates a scale-out operation.
  /// [scalingGroupId] Scaling group id the scaling rules belong to.
  /// [scalingRuleAri] Ari of scaling rule.
  /// [stepAdjustments] (Available since v1.250.0) The step adjustments of the step scaling rule.
  /// [targetValue] (Available since v1.242.0) The target value of the metric.
  /// [type] Type of scaling rule.
  GetScalingRulesRule({
    required this.adjustmentType,
    required this.adjustmentValue,
    required this.cooldown,
    required this.disableScaleIn,
    required this.estimatedInstanceWarmup,
    required this.hybridMetrics,
    required this.hybridMonitorNamespace,
    required this.id,
    required this.initialMaxSize,
    required this.metricName,
    required this.metricType,
    required this.minAdjustmentMagnitude,
    required this.name,
    required this.predictiveScalingMode,
    required this.predictiveTaskBufferTime,
    required this.predictiveValueBehavior,
    required this.predictiveValueBuffer,
    required this.scaleInEvaluationCount,
    required this.scaleOutEvaluationCount,
    required this.scalingGroupId,
    required this.scalingRuleAri,
    required this.stepAdjustments,
    required this.targetValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentType': adjustmentType,
      'adjustmentValue': adjustmentValue,
      'cooldown': cooldown,
      'disableScaleIn': disableScaleIn,
      'estimatedInstanceWarmup': estimatedInstanceWarmup,
      'hybridMetrics':
          pulumi.Input.mapInputValue<
            List<GetScalingRulesRuleHybridMetric>,
            List<Map<String, dynamic>>
          >(
            hybridMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  GetScalingRulesRuleHybridMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hybridMonitorNamespace': hybridMonitorNamespace,
      'id': id,
      'initialMaxSize': initialMaxSize,
      'metricName': metricName,
      'metricType': metricType,
      'minAdjustmentMagnitude': minAdjustmentMagnitude,
      'name': name,
      'predictiveScalingMode': predictiveScalingMode,
      'predictiveTaskBufferTime': predictiveTaskBufferTime,
      'predictiveValueBehavior': predictiveValueBehavior,
      'predictiveValueBuffer': predictiveValueBuffer,
      'scaleInEvaluationCount': scaleInEvaluationCount,
      'scaleOutEvaluationCount': scaleOutEvaluationCount,
      'scalingGroupId': scalingGroupId,
      'scalingRuleAri': scalingRuleAri,
      'stepAdjustments':
          pulumi.Input.mapInputValue<
            List<GetScalingRulesRuleStepAdjustment>,
            List<Map<String, dynamic>>
          >(
            stepAdjustments,
            (value) =>
                pulumi.Input.encodeList<
                  GetScalingRulesRuleStepAdjustment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetValue': targetValue,
      'type': type,
    };
  }

  factory GetScalingRulesRule.fromMap(Map<String, dynamic> map) {
    return GetScalingRulesRule(
      adjustmentType: pulumi.Input.fromValue(map['adjustmentType'] as String),
      adjustmentValue: pulumi.Input.fromValue(map['adjustmentValue'] as int),
      cooldown: pulumi.Input.fromValue(map['cooldown'] as int),
      disableScaleIn: pulumi.Input.fromValue(map['disableScaleIn'] as bool),
      estimatedInstanceWarmup: pulumi.Input.fromValue(
        map['estimatedInstanceWarmup'] as int,
      ),
      hybridMetrics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetScalingRulesRuleHybridMetric>(
          map['hybridMetrics']!,
          (value) => GetScalingRulesRuleHybridMetric.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      hybridMonitorNamespace: pulumi.Input.fromValue(
        map['hybridMonitorNamespace'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      initialMaxSize: pulumi.Input.fromValue(map['initialMaxSize'] as int),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricType: pulumi.Input.fromValue(map['metricType'] as String),
      minAdjustmentMagnitude: pulumi.Input.fromValue(
        map['minAdjustmentMagnitude'] as int,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      predictiveScalingMode: pulumi.Input.fromValue(
        map['predictiveScalingMode'] as String,
      ),
      predictiveTaskBufferTime: pulumi.Input.fromValue(
        map['predictiveTaskBufferTime'] as int,
      ),
      predictiveValueBehavior: pulumi.Input.fromValue(
        map['predictiveValueBehavior'] as String,
      ),
      predictiveValueBuffer: pulumi.Input.fromValue(
        map['predictiveValueBuffer'] as int,
      ),
      scaleInEvaluationCount: pulumi.Input.fromValue(
        map['scaleInEvaluationCount'] as int,
      ),
      scaleOutEvaluationCount: pulumi.Input.fromValue(
        map['scaleOutEvaluationCount'] as int,
      ),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
      scalingRuleAri: pulumi.Input.fromValue(map['scalingRuleAri'] as String),
      stepAdjustments: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetScalingRulesRuleStepAdjustment>(
          map['stepAdjustments']!,
          (value) => GetScalingRulesRuleStepAdjustment.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      targetValue: pulumi.Input.fromValue(map['targetValue'] as double),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
