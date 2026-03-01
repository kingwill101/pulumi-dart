// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of a specific monitoring destination (the producer project or the consumer project).
class MonitoringDestination {
  /// Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.
  final List<String>? metrics;

  /// The monitored resource type. The type must be defined in Service.monitored_resources section.
  final String? monitoredResource;

  /// Creates a new [MonitoringDestination].
  /// [metrics] Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.
  /// [monitoredResource] The monitored resource type. The type must be defined in Service.monitored_resources section.
  MonitoringDestination({this.metrics, this.monitoredResource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?metrics,
      'monitoredResource': ?monitoredResource,
    };
  }

  factory MonitoringDestination.fromMap(Map<String, dynamic> map) {
    return MonitoringDestination(
      metrics: map['metrics'] == null
          ? null
          : (map['metrics'] as List).cast<String>(),
      monitoredResource: map['monitoredResource'] == null
          ? null
          : map['monitoredResource'] as String,
    );
  }
}
