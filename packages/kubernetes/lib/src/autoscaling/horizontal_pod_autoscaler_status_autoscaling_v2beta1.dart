// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizontal_pod_autoscaler_condition_autoscaling_v2beta1.dart';
import 'metric_status_autoscaling_v2beta1.dart';

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatusAutoscalingV2beta1 {
  /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  final List<HorizontalPodAutoscalerConditionAutoscalingV2beta1> conditions;
  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  final List<MetricStatusAutoscalingV2beta1>? currentMetrics;
  /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  final int currentReplicas;
  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  final int desiredReplicas;
  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  final String? lastScaleTime;
  /// observedGeneration is the most recent generation observed by this autoscaler.
  final int? observedGeneration;

  /// Creates a new [HorizontalPodAutoscalerStatusAutoscalingV2beta1].
  /// [conditions] conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  /// [currentMetrics] currentMetrics is the last read state of the metrics used by this autoscaler.
  /// [currentReplicas] currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  /// [desiredReplicas] desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  /// [lastScaleTime] lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  /// [observedGeneration] observedGeneration is the most recent generation observed by this autoscaler.
  HorizontalPodAutoscalerStatusAutoscalingV2beta1({
    required this.conditions,
    this.currentMetrics,
    required this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.encodeList<HorizontalPodAutoscalerConditionAutoscalingV2beta1, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'currentMetrics': ?currentMetrics == null ? null : pulumi.Input.encodeList<MetricStatusAutoscalingV2beta1, Map<String, dynamic>>(currentMetrics!, (value) => value.toMap()),
      'currentReplicas': currentReplicas,
      'desiredReplicas': desiredReplicas,
      'lastScaleTime': ?lastScaleTime,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory HorizontalPodAutoscalerStatusAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerStatusAutoscalingV2beta1(
      conditions: pulumi.Input.decodeList<HorizontalPodAutoscalerConditionAutoscalingV2beta1>(map['conditions'], (value) => HorizontalPodAutoscalerConditionAutoscalingV2beta1.fromMap((value as Map).cast<String, dynamic>())),
      currentMetrics: map['currentMetrics'] == null ? null : pulumi.Input.decodeList<MetricStatusAutoscalingV2beta1>(map['currentMetrics'], (value) => MetricStatusAutoscalingV2beta1.fromMap((value as Map).cast<String, dynamic>())),
      currentReplicas: map['currentReplicas'] as int,
      desiredReplicas: map['desiredReplicas'] as int,
      lastScaleTime: map['lastScaleTime'] == null ? null : map['lastScaleTime'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
    );
  }
}

