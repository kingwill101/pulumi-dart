// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension_response.dart';

/// Definition of Metric
class MetricResponse {
  /// The metric dimensions that you want to be used for the metric that the alarm will watch.
  final pulumi.Input<List<DimensionResponse>>? dimensions;
  /// The name of the metric that you want the alarm to watch. This is a required field.
  final pulumi.Input<String>? metricName;
  /// The namespace of the metric that the alarm will watch.
  final pulumi.Input<String>? namespace;

  /// Creates a new [MetricResponse].
  /// [dimensions] The metric dimensions that you want to be used for the metric that the alarm will watch.
  /// [metricName] The name of the metric that you want the alarm to watch. This is a required field.
  /// [namespace] The namespace of the metric that the alarm will watch.
  const MetricResponse({
    this.dimensions,
    this.metricName,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<DimensionResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<DimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': ?metricName,
      'namespace': ?namespace,
    };
  }

  factory MetricResponse.fromMap(Map<String, dynamic> map) {
    return MetricResponse(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DimensionResponse>(guardedValue, (value) => DimensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

