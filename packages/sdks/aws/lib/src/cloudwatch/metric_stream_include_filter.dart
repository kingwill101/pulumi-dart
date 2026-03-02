// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricStreamIncludeFilter {
  /// An array that defines the metrics you want to include for this metric namespace
  final pulumi.Input<List<String>>? metricNames;
  /// Name of the metric namespace in the filter.
  final pulumi.Input<String> namespace;

  /// Creates a new [MetricStreamIncludeFilter].
  /// [metricNames] An array that defines the metrics you want to include for this metric namespace
  /// [namespace] Name of the metric namespace in the filter.
  MetricStreamIncludeFilter({
    this.metricNames,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricNames': ?metricNames,
      'namespace': namespace,
    };
  }

  factory MetricStreamIncludeFilter.fromMap(Map<String, dynamic> map) {
    return MetricStreamIncludeFilter(
      metricNames: map['metricNames'] == null ? null : ((map['metricNames'] as List).cast<String>()).input(),
      namespace: (map['namespace'] as String).input(),
    );
  }
}

