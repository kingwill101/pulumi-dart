// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizontal_pod_autoscaler_condition_patch_autoscaling_v2beta2.dart';
import 'metric_status_patch_autoscaling_v2beta2.dart';

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatusPatchAutoscalingV2beta2 {
  /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  final List<HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2>? conditions;
  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  final List<MetricStatusPatchAutoscalingV2beta2>? currentMetrics;
  /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  final int? currentReplicas;
  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  final int? desiredReplicas;
  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  final String? lastScaleTime;
  /// observedGeneration is the most recent generation observed by this autoscaler.
  final int? observedGeneration;

  /// Creates a new [HorizontalPodAutoscalerStatusPatchAutoscalingV2beta2].
  /// [conditions] conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  /// [currentMetrics] currentMetrics is the last read state of the metrics used by this autoscaler.
  /// [currentReplicas] currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  /// [desiredReplicas] desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  /// [lastScaleTime] lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  /// [observedGeneration] observedGeneration is the most recent generation observed by this autoscaler.
  HorizontalPodAutoscalerStatusPatchAutoscalingV2beta2({
    this.conditions,
    this.currentMetrics,
    this.currentReplicas,
    this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'currentMetrics': ?currentMetrics == null ? null : pulumi.Input.encodeList<MetricStatusPatchAutoscalingV2beta2, Map<String, dynamic>>(currentMetrics!, (value) => value.toMap()),
      'currentReplicas': ?currentReplicas,
      'desiredReplicas': ?desiredReplicas,
      'lastScaleTime': ?lastScaleTime,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory HorizontalPodAutoscalerStatusPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerStatusPatchAutoscalingV2beta2(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2>(map['conditions'], (value) => HorizontalPodAutoscalerConditionPatchAutoscalingV2beta2.fromMap((value as Map).cast<String, dynamic>())),
      currentMetrics: map['currentMetrics'] == null ? null : pulumi.Input.decodeList<MetricStatusPatchAutoscalingV2beta2>(map['currentMetrics'], (value) => MetricStatusPatchAutoscalingV2beta2.fromMap((value as Map).cast<String, dynamic>())),
      currentReplicas: map['currentReplicas'] == null ? null : map['currentReplicas'] as int,
      desiredReplicas: map['desiredReplicas'] == null ? null : map['desiredReplicas'] as int,
      lastScaleTime: map['lastScaleTime'] == null ? null : map['lastScaleTime'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
    );
  }
}

