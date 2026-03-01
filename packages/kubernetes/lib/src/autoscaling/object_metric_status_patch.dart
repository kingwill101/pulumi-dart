// ignore_for_file: unused_element, unnecessary_cast

import 'cross_version_object_reference_patch_autoscaling_v2.dart';
import 'metric_identifier_patch.dart';
import 'metric_value_status_patch.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatusPatch {
  /// current contains the current value for the given metric
  final MetricValueStatusPatch? current;
  /// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
  final CrossVersionObjectReferencePatchAutoscalingV2? describedObject;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierPatch? metric;

  /// Creates a new [ObjectMetricStatusPatch].
  /// [current] current contains the current value for the given metric
  /// [describedObject] DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
  /// [metric] metric identifies the target metric by name and selector
  ObjectMetricStatusPatch({
    this.current,
    this.describedObject,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current == null ? null : current!.toMap(),
      'describedObject': ?describedObject == null ? null : describedObject!.toMap(),
      'metric': ?metric == null ? null : metric!.toMap(),
    };
  }

  factory ObjectMetricStatusPatch.fromMap(Map<String, dynamic> map) {
    return ObjectMetricStatusPatch(
      current: map['current'] == null ? null : MetricValueStatusPatch.fromMap((map['current'] as Map).cast<String, dynamic>()),
      describedObject: map['describedObject'] == null ? null : CrossVersionObjectReferencePatchAutoscalingV2.fromMap((map['describedObject'] as Map).cast<String, dynamic>()),
      metric: map['metric'] == null ? null : MetricIdentifierPatch.fromMap((map['metric'] as Map).cast<String, dynamic>()),
    );
  }
}

