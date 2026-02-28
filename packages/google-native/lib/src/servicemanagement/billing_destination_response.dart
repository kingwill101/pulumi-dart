// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of a specific billing destination (Currently only support bill against consumer project).
class BillingDestinationResponse {
  /// Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  final List<String> metrics;

  /// The monitored resource type. The type must be defined in Service.monitored_resources section.
  final String monitoredResource;

  /// Creates a new [BillingDestinationResponse].
  /// [metrics] Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  /// [monitoredResource] The monitored resource type. The type must be defined in Service.monitored_resources section.
  BillingDestinationResponse({
    required this.metrics,
    required this.monitoredResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] = metrics;
    map['monitoredResource'] = monitoredResource;
    return map;
  }

  factory BillingDestinationResponse.fromMap(Map<String, dynamic> map) {
    return BillingDestinationResponse(
      metrics: (map['metrics'] as List).cast<String>(),
      monitoredResource: map['monitoredResource'] as String,
    );
  }
}
