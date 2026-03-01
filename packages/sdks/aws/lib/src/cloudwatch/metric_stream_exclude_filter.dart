// ignore_for_file: unused_element, unnecessary_cast


class MetricStreamExcludeFilter {
  /// An array that defines the metrics you want to exclude for this metric namespace
  final List<String>? metricNames;
  /// Name of the metric namespace in the filter.
  final String namespace;

  /// Creates a new [MetricStreamExcludeFilter].
  /// [metricNames] An array that defines the metrics you want to exclude for this metric namespace
  /// [namespace] Name of the metric namespace in the filter.
  MetricStreamExcludeFilter({
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
      metricNames: map['metricNames'] == null ? null : (map['metricNames'] as List).cast<String>(),
      namespace: map['namespace'] as String,
    );
  }
}

