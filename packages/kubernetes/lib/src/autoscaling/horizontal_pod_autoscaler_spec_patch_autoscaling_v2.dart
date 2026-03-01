// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_patch_autoscaling_v2.dart';
import 'horizontal_pod_autoscaler_behavior_patch.dart';
import 'metric_spec_patch.dart';

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
class HorizontalPodAutoscalerSpecPatchAutoscalingV2 {
  /// behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
  final HorizontalPodAutoscalerBehaviorPatch? behavior;
  /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  final int? maxReplicas;
  /// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  final List<MetricSpecPatch>? metrics;
  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final int? minReplicas;
  /// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  final CrossVersionObjectReferencePatchAutoscalingV2? scaleTargetRef;

  /// Creates a new [HorizontalPodAutoscalerSpecPatchAutoscalingV2].
  /// [behavior] behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
  /// [maxReplicas] maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  /// [metrics] metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  /// [minReplicas] minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  /// [scaleTargetRef] scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  HorizontalPodAutoscalerSpecPatchAutoscalingV2({
    this.behavior,
    this.maxReplicas,
    this.metrics,
    this.minReplicas,
    this.scaleTargetRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior == null ? null : behavior!.toMap(),
      'maxReplicas': ?maxReplicas,
      'metrics': ?metrics == null ? null : pulumi.Input.encodeList<MetricSpecPatch, Map<String, dynamic>>(metrics!, (value) => value.toMap()),
      'minReplicas': ?minReplicas,
      'scaleTargetRef': ?scaleTargetRef == null ? null : scaleTargetRef!.toMap(),
    };
  }

  factory HorizontalPodAutoscalerSpecPatchAutoscalingV2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerSpecPatchAutoscalingV2(
      behavior: map['behavior'] == null ? null : HorizontalPodAutoscalerBehaviorPatch.fromMap((map['behavior'] as Map).cast<String, dynamic>()),
      maxReplicas: map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      metrics: map['metrics'] == null ? null : pulumi.Input.decodeList<MetricSpecPatch>(map['metrics'], (value) => MetricSpecPatch.fromMap((value as Map).cast<String, dynamic>())),
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      scaleTargetRef: map['scaleTargetRef'] == null ? null : CrossVersionObjectReferencePatchAutoscalingV2.fromMap((map['scaleTargetRef'] as Map).cast<String, dynamic>()),
    );
  }
}

