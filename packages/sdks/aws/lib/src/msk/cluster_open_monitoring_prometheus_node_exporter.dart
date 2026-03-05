// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOpenMonitoringPrometheusNodeExporter {
  /// Indicates whether you want to enable or disable the Node Exporter.
  final pulumi.Input<bool> enabledInBroker;

  /// Creates a new [ClusterOpenMonitoringPrometheusNodeExporter].
  /// [enabledInBroker] Indicates whether you want to enable or disable the Node Exporter.
  ClusterOpenMonitoringPrometheusNodeExporter({
    required this.enabledInBroker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledInBroker': enabledInBroker,
    };
  }

  factory ClusterOpenMonitoringPrometheusNodeExporter.fromMap(Map<String, dynamic> map) {
    return ClusterOpenMonitoringPrometheusNodeExporter(
      enabledInBroker: pulumi.Input.fromValue(map['enabledInBroker'] as bool),
    );
  }
}

