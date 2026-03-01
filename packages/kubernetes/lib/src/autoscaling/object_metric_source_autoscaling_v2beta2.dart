// ignore_for_file: unused_element, unnecessary_cast

import 'cross_version_object_reference_autoscaling_v2beta2.dart';
import 'metric_identifier_autoscaling_v2beta2.dart';
import 'metric_target_autoscaling_v2beta2.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourceAutoscalingV2beta2 {
  final CrossVersionObjectReferenceAutoscalingV2beta2 describedObject;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierAutoscalingV2beta2 metric;
  /// target specifies the target value for the given metric
  final MetricTargetAutoscalingV2beta2 target;

  /// Creates a new [ObjectMetricSourceAutoscalingV2beta2].
  /// [describedObject] Required.
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ObjectMetricSourceAutoscalingV2beta2({
    required this.describedObject,
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'describedObject': describedObject.toMap(),
      'metric': metric.toMap(),
      'target': target.toMap(),
    };
  }

  factory ObjectMetricSourceAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourceAutoscalingV2beta2(
      describedObject: CrossVersionObjectReferenceAutoscalingV2beta2.fromMap((map['describedObject'] as Map).cast<String, dynamic>()),
      metric: MetricIdentifierAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: MetricTargetAutoscalingV2beta2.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

