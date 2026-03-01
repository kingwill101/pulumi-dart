// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension.dart';

/// Definition of Metric
class Metric {
  /// The metric dimensions that you want to be used for the metric that the alarm will watch.
  final List<Dimension>? dimensions;
  /// The name of the metric that you want the alarm to watch. This is a required field.
  final String? metricName;
  /// The namespace of the metric that the alarm will watch.
  final String? namespace;

  /// Creates a new [Metric].
  /// [dimensions] The metric dimensions that you want to be used for the metric that the alarm will watch.
  /// [metricName] The name of the metric that you want the alarm to watch. This is a required field.
  /// [namespace] The namespace of the metric that the alarm will watch.
  Metric({
    this.dimensions,
    this.metricName,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'metricName': ?metricName,
      'namespace': ?namespace,
    };
  }

  factory Metric.fromMap(Map<String, dynamic> map) {
    return Metric(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<Dimension>(map['dimensions'], (value) => Dimension.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

