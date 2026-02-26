// ignore_for_file: unused_element, unnecessary_cast

class ClusterOpenMonitoringPrometheusNodeExporter {
  /// Indicates whether you want to enable or disable the Node Exporter.
  final bool enabledInBroker;

  ClusterOpenMonitoringPrometheusNodeExporter({
    required this.enabledInBroker,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledInBroker'] = enabledInBroker;
    return map;
  }

  factory ClusterOpenMonitoringPrometheusNodeExporter.fromMap(
      Map<String, dynamic> map) {
    return ClusterOpenMonitoringPrometheusNodeExporter(
      enabledInBroker: map['enabledInBroker'] as bool,
    );
  }
}
