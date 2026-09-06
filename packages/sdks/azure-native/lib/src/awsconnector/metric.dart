// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension.dart';

/// Definition of Metric
class Metric {
  /// The metric dimensions that you want to be used for the metric that the alarm will watch.
  final pulumi.Input<List<Dimension>?>? dimensions;
  /// The name of the metric that you want the alarm to watch. This is a required field.
  final pulumi.Input<String?>? metricName;
  /// The namespace of the metric that the alarm will watch.
  final pulumi.Input<String?>? namespace;

  /// Creates a new [Metric].
  /// [dimensions] The metric dimensions that you want to be used for the metric that the alarm will watch.
  /// [metricName] The name of the metric that you want the alarm to watch. This is a required field.
  /// [namespace] The namespace of the metric that the alarm will watch.
  const Metric({
    this.dimensions,
    this.metricName,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<Dimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': ?metricName,
      'namespace': ?namespace,
    };
  }

  factory Metric.fromMap(Map<String, dynamic> map) {
    return Metric(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Dimension>(guardedValue, (value) => Dimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
