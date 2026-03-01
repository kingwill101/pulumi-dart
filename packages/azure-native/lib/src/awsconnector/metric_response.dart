// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension_response.dart';

/// Definition of Metric
class MetricResponse {
  /// The metric dimensions that you want to be used for the metric that the alarm will watch.
  final List<DimensionResponse>? dimensions;
  /// The name of the metric that you want the alarm to watch. This is a required field.
  final String? metricName;
  /// The namespace of the metric that the alarm will watch.
  final String? namespace;

  /// Creates a new [MetricResponse].
  /// [dimensions] The metric dimensions that you want to be used for the metric that the alarm will watch.
  /// [metricName] The name of the metric that you want the alarm to watch. This is a required field.
  /// [namespace] The namespace of the metric that the alarm will watch.
  MetricResponse({
    this.dimensions,
    this.metricName,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<DimensionResponse, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'metricName': ?metricName,
      'namespace': ?namespace,
    };
  }

  factory MetricResponse.fromMap(Map<String, dynamic> map) {
    return MetricResponse(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<DimensionResponse>(map['dimensions'], (value) => DimensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

