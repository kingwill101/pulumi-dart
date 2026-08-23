// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOpenMonitoringPrometheusJmxExporter {
  /// Indicates whether you want to enable or disable the Node Exporter.
  final pulumi.Input<bool> enabledInBroker;

  /// Creates a new [ClusterOpenMonitoringPrometheusJmxExporter].
  /// [enabledInBroker] Indicates whether you want to enable or disable the Node Exporter.
  const ClusterOpenMonitoringPrometheusJmxExporter({
    required this.enabledInBroker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledInBroker': enabledInBroker,
    };
  }

  factory ClusterOpenMonitoringPrometheusJmxExporter.fromMap(Map<String, dynamic> map) {
    return ClusterOpenMonitoringPrometheusJmxExporter(
      enabledInBroker: pulumi.Input.fromValue(map['enabledInBroker'] as bool),
    );
  }
}
