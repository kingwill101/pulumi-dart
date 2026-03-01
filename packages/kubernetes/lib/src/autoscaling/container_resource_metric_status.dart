// ignore_for_file: unused_element, unnecessary_cast

import 'metric_value_status.dart';

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatus {
  /// container is the name of the container in the pods of the scaling target
  final String container;
  /// current contains the current value for the given metric
  final MetricValueStatus current;
  /// name is the name of the resource in question.
  final String name;

  /// Creates a new [ContainerResourceMetricStatus].
  /// [container] container is the name of the container in the pods of the scaling target
  /// [current] current contains the current value for the given metric
  /// [name] name is the name of the resource in question.
  ContainerResourceMetricStatus({
    required this.container,
    required this.current,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'current': current.toMap(),
      'name': name,
    };
  }

  factory ContainerResourceMetricStatus.fromMap(Map<String, dynamic> map) {
    return ContainerResourceMetricStatus(
      container: map['container'] as String,
      current: MetricValueStatus.fromMap((map['current'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

