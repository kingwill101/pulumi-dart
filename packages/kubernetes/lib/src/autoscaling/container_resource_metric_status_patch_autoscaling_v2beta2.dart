// ignore_for_file: unused_element, unnecessary_cast

import 'metric_value_status_patch_autoscaling_v2beta2.dart';

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatusPatchAutoscalingV2beta2 {
  /// Container is the name of the container in the pods of the scaling target
  final String? container;
  /// current contains the current value for the given metric
  final MetricValueStatusPatchAutoscalingV2beta2? current;
  /// Name is the name of the resource in question.
  final String? name;

  /// Creates a new [ContainerResourceMetricStatusPatchAutoscalingV2beta2].
  /// [container] Container is the name of the container in the pods of the scaling target
  /// [current] current contains the current value for the given metric
  /// [name] Name is the name of the resource in question.
  ContainerResourceMetricStatusPatchAutoscalingV2beta2({
    this.container,
    this.current,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'current': ?current == null ? null : current!.toMap(),
      'name': ?name,
    };
  }

  factory ContainerResourceMetricStatusPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ContainerResourceMetricStatusPatchAutoscalingV2beta2(
      container: map['container'] == null ? null : map['container'] as String,
      current: map['current'] == null ? null : MetricValueStatusPatchAutoscalingV2beta2.fromMap((map['current'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

