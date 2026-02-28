// ignore_for_file: unused_element, unnecessary_cast

class ClusterOpenMonitoringPrometheusJmxExporter {
  /// Indicates whether you want to enable or disable the Node Exporter.
  final bool enabledInBroker;

  /// Creates a new [ClusterOpenMonitoringPrometheusJmxExporter].
  /// [enabledInBroker] Indicates whether you want to enable or disable the Node Exporter.
  ClusterOpenMonitoringPrometheusJmxExporter({
    required this.enabledInBroker,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledInBroker'] = enabledInBroker;
    return map;
  }

  factory ClusterOpenMonitoringPrometheusJmxExporter.fromMap(
      Map<String, dynamic> map) {
    return ClusterOpenMonitoringPrometheusJmxExporter(
      enabledInBroker: map['enabledInBroker'] as bool,
    );
  }
}
