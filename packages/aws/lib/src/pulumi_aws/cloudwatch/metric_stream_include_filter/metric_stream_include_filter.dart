// ignore_for_file: unused_element, unnecessary_cast

class MetricStreamIncludeFilter {
  /// An array that defines the metrics you want to include for this metric namespace
  final List<String>? metricNames;

  /// Name of the metric namespace in the filter.
  final String namespace;

  MetricStreamIncludeFilter({
    this.metricNames,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricNamesValue = metricNames;
    if (metricNamesValue != null) {
      map['metricNames'] = metricNamesValue;
    }
    map['namespace'] = namespace;
    return map;
  }

  factory MetricStreamIncludeFilter.fromMap(Map<String, dynamic> map) {
    return MetricStreamIncludeFilter(
      metricNames: map['metricNames'] == null
          ? null
          : (map['metricNames'] as List).cast<String>(),
      namespace: map['namespace'] as String,
    );
  }
}
