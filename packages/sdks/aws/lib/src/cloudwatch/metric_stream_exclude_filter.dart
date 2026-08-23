// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricStreamExcludeFilter {
  /// An array that defines the metrics you want to exclude for this metric namespace
  final pulumi.Input<List<String>>? metricNames;
  /// Name of the metric namespace in the filter.
  final pulumi.Input<String> namespace;

  /// Creates a new [MetricStreamExcludeFilter].
  /// [metricNames] An array that defines the metrics you want to exclude for this metric namespace
  /// [namespace] Name of the metric namespace in the filter.
  const MetricStreamExcludeFilter({
    this.metricNames,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricNames': ?metricNames,
      'namespace': namespace,
    };
  }

  factory MetricStreamExcludeFilter.fromMap(Map<String, dynamic> map) {
    return MetricStreamExcludeFilter(
      metricNames: (() { final guardedValue = map['metricNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
