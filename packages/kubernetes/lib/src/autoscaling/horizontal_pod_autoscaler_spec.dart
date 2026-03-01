// ignore_for_file: unused_element, unnecessary_cast

import 'cross_version_object_reference.dart';

/// specification of a horizontal pod autoscaler.
class HorizontalPodAutoscalerSpec {
  /// maxReplicas is the upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  final int maxReplicas;
  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final int? minReplicas;
  /// reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
  final CrossVersionObjectReference scaleTargetRef;
  /// targetCPUUtilizationPercentage is the target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  final int? targetCPUUtilizationPercentage;

  /// Creates a new [HorizontalPodAutoscalerSpec].
  /// [maxReplicas] maxReplicas is the upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  /// [minReplicas] minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  /// [scaleTargetRef] reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
  /// [targetCPUUtilizationPercentage] targetCPUUtilizationPercentage is the target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  HorizontalPodAutoscalerSpec({
    required this.maxReplicas,
    this.minReplicas,
    required this.scaleTargetRef,
    this.targetCPUUtilizationPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': maxReplicas,
      'minReplicas': ?minReplicas,
      'scaleTargetRef': scaleTargetRef.toMap(),
      'targetCPUUtilizationPercentage': ?targetCPUUtilizationPercentage,
    };
  }

  factory HorizontalPodAutoscalerSpec.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerSpec(
      maxReplicas: map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      scaleTargetRef: CrossVersionObjectReference.fromMap((map['scaleTargetRef'] as Map).cast<String, dynamic>()),
      targetCPUUtilizationPercentage: map['targetCPUUtilizationPercentage'] == null ? null : map['targetCPUUtilizationPercentage'] as int,
    );
  }
}

