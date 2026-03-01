// ignore_for_file: unused_element, unnecessary_cast

import 'cross_version_object_reference_autoscaling_v2.dart';
import 'metric_identifier.dart';
import 'metric_target.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSource {
  /// describedObject specifies the descriptions of a object,such as kind,name apiVersion
  final CrossVersionObjectReferenceAutoscalingV2 describedObject;
  /// metric identifies the target metric by name and selector
  final MetricIdentifier metric;
  /// target specifies the target value for the given metric
  final MetricTarget target;

  /// Creates a new [ObjectMetricSource].
  /// [describedObject] describedObject specifies the descriptions of a object,such as kind,name apiVersion
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ObjectMetricSource({
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

  factory ObjectMetricSource.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSource(
      describedObject: CrossVersionObjectReferenceAutoscalingV2.fromMap((map['describedObject'] as Map).cast<String, dynamic>()),
      metric: MetricIdentifier.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: MetricTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

