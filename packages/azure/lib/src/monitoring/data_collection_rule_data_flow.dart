// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleDataFlow {
  /// The built-in transform to transform stream data.
  final String? builtInTransform;
  /// Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  final List<String> destinations;
  /// The output stream of the transform. Only required if the data flow changes data to a different stream.
  final String? outputStream;
  /// Specifies a list of streams. Possible values include but not limited to `Microsoft-Event`, `Microsoft-InsightsMetrics`, `Microsoft-Perf`, `Microsoft-Syslog`, `Microsoft-WindowsEvent`, and `Microsoft-PrometheusMetrics`.
  final List<String> streams;
  /// The KQL query to transform stream data.
  final String? transformKql;

  /// Creates a new [DataCollectionRuleDataFlow].
  /// [builtInTransform] The built-in transform to transform stream data.
  /// [destinations] Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  /// [outputStream] The output stream of the transform. Only required if the data flow changes data to a different stream.
  /// [streams] Specifies a list of streams. Possible values include but not limited to `Microsoft-Event`, `Microsoft-InsightsMetrics`, `Microsoft-Perf`, `Microsoft-Syslog`, `Microsoft-WindowsEvent`, and `Microsoft-PrometheusMetrics`.
  /// [transformKql] The KQL query to transform stream data.
  DataCollectionRuleDataFlow({
    this.builtInTransform,
    required this.destinations,
    this.outputStream,
    required this.streams,
    this.transformKql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInTransform': ?builtInTransform,
      'destinations': destinations,
      'outputStream': ?outputStream,
      'streams': streams,
      'transformKql': ?transformKql,
    };
  }

  factory DataCollectionRuleDataFlow.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataFlow(
      builtInTransform: map['builtInTransform'] == null ? null : map['builtInTransform'] as String,
      destinations: (map['destinations'] as List).cast<String>(),
      outputStream: map['outputStream'] == null ? null : map['outputStream'] as String,
      streams: (map['streams'] as List).cast<String>(),
      transformKql: map['transformKql'] == null ? null : map['transformKql'] as String,
    );
  }
}

