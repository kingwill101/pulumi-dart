// ignore_for_file: unused_element, unnecessary_cast


class MetricStreamIncludeFilter {
  /// An array that defines the metrics you want to include for this metric namespace
  final List<String>? metricNames;
  /// Name of the metric namespace in the filter.
  final String namespace;

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
      metricNames: map['metricNames'] == null ? null : (map['metricNames'] as List).cast<String>(),
      namespace: map['namespace'] as String,
    );
  }
}

