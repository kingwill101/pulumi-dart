// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of a specific monitoring destination (the producer project or the consumer project).
class MonitoringDestinationResponse {
  /// Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.
  final List<String> metrics;

  /// The monitored resource type. The type must be defined in Service.monitored_resources section.
  final String monitoredResource;

  /// Creates a new [MonitoringDestinationResponse].
  /// [metrics] Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.
  /// [monitoredResource] The monitored resource type. The type must be defined in Service.monitored_resources section.
  MonitoringDestinationResponse({
    required this.metrics,
    required this.monitoredResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] = metrics;
    map['monitoredResource'] = monitoredResource;
    return map;
  }

  factory MonitoringDestinationResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringDestinationResponse(
      metrics: (map['metrics'] as List).cast<String>(),
      monitoredResource: map['monitoredResource'] as String,
    );
  }
}
