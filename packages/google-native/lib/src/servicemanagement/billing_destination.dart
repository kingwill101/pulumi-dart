// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of a specific billing destination (Currently only support bill against consumer project).
class BillingDestination {
  /// Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  final List<String>? metrics;

  /// The monitored resource type. The type must be defined in Service.monitored_resources section.
  final String? monitoredResource;

  /// Creates a new [BillingDestination].
  /// [metrics] Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  /// [monitoredResource] The monitored resource type. The type must be defined in Service.monitored_resources section.
  BillingDestination({this.metrics, this.monitoredResource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?metrics,
      'monitoredResource': ?monitoredResource,
    };
  }

  factory BillingDestination.fromMap(Map<String, dynamic> map) {
    return BillingDestination(
      metrics: map['metrics'] == null
          ? null
          : (map['metrics'] as List).cast<String>(),
      monitoredResource: map['monitoredResource'] == null
          ? null
          : map['monitoredResource'] as String,
    );
  }
}
