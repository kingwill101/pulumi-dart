// ignore_for_file: unused_element, unnecessary_cast

import 'cross_version_object_reference_patch_autoscaling_v2beta2.dart';
import 'metric_identifier_patch_autoscaling_v2beta2.dart';
import 'metric_target_patch_autoscaling_v2beta2.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourcePatchAutoscalingV2beta2 {
  final CrossVersionObjectReferencePatchAutoscalingV2beta2? describedObject;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierPatchAutoscalingV2beta2? metric;
  /// target specifies the target value for the given metric
  final MetricTargetPatchAutoscalingV2beta2? target;

  /// Creates a new [ObjectMetricSourcePatchAutoscalingV2beta2].
  /// [describedObject] Optional.
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ObjectMetricSourcePatchAutoscalingV2beta2({
    this.describedObject,
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'describedObject': ?describedObject == null ? null : describedObject!.toMap(),
      'metric': ?metric == null ? null : metric!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory ObjectMetricSourcePatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourcePatchAutoscalingV2beta2(
      describedObject: map['describedObject'] == null ? null : CrossVersionObjectReferencePatchAutoscalingV2beta2.fromMap((map['describedObject'] as Map).cast<String, dynamic>()),
      metric: map['metric'] == null ? null : MetricIdentifierPatchAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : MetricTargetPatchAutoscalingV2beta2.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

