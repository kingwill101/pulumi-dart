// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Prometheus metrics forwarding configuration.
class PrometheusForwarderDataSource {
  /// The list of label inclusion filters in the form of label "name-value" pairs.
  /// Currently only one label is supported: 'microsoft_metrics_include_label'.
  /// Label values are matched case-insensitively.
  final Map<String, String>? labelIncludeFilter;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final String? name;
  /// List of streams that this data source will be sent to.
  final List<String>? streams;

  /// Creates a new [PrometheusForwarderDataSource].
  /// [labelIncludeFilter] The list of label inclusion filters in the form of label "name-value" pairs.
  /// [name] A friendly name for the data source.
  /// [streams] List of streams that this data source will be sent to.
  PrometheusForwarderDataSource({
    this.labelIncludeFilter,
    this.name,
    this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelIncludeFilter': ?labelIncludeFilter,
      'name': ?name,
      'streams': ?streams,
    };
  }

  factory PrometheusForwarderDataSource.fromMap(Map<String, dynamic> map) {
    return PrometheusForwarderDataSource(
      labelIncludeFilter: map['labelIncludeFilter'] == null ? null : (map['labelIncludeFilter'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      streams: map['streams'] == null ? null : (map['streams'] as List).cast<String>(),
    );
  }
}

