// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingMetricsConfig {
  /// List containing the metrics to be produced by the event source mapping. Valid values: `EventCount`.
  final List<String> metrics;

  /// Creates a new [EventSourceMappingMetricsConfig].
  /// [metrics] List containing the metrics to be produced by the event source mapping. Valid values: `EventCount`.
  EventSourceMappingMetricsConfig({required this.metrics});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metrics': metrics};
  }

  factory EventSourceMappingMetricsConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingMetricsConfig(
      metrics: (map['metrics'] as List).cast<String>(),
    );
  }
}
