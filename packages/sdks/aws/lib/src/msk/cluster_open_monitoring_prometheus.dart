// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_open_monitoring_prometheus_jmx_exporter.dart';
import 'cluster_open_monitoring_prometheus_node_exporter.dart';

class ClusterOpenMonitoringPrometheus {
  /// Configuration block for JMX Exporter. See openMonitoring prometheus jmxExporter Argument Reference below.
  final pulumi.Input<ClusterOpenMonitoringPrometheusJmxExporter>? jmxExporter;
  /// Configuration block for Node Exporter. See openMonitoring prometheus nodeExporter Argument Reference below.
  final pulumi.Input<ClusterOpenMonitoringPrometheusNodeExporter>? nodeExporter;

  /// Creates a new [ClusterOpenMonitoringPrometheus].
  /// [jmxExporter] Configuration block for JMX Exporter. See openMonitoring prometheus jmxExporter Argument Reference below.
  /// [nodeExporter] Configuration block for Node Exporter. See openMonitoring prometheus nodeExporter Argument Reference below.
  const ClusterOpenMonitoringPrometheus({
    this.jmxExporter,
    this.nodeExporter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jmxExporter': ?pulumi.Input.mapOptionalInputValue<ClusterOpenMonitoringPrometheusJmxExporter, Map<String, dynamic>>(jmxExporter, (value) => value.toMap()),
      'nodeExporter': ?pulumi.Input.mapOptionalInputValue<ClusterOpenMonitoringPrometheusNodeExporter, Map<String, dynamic>>(nodeExporter, (value) => value.toMap()),
    };
  }

  factory ClusterOpenMonitoringPrometheus.fromMap(Map<String, dynamic> map) {
    return ClusterOpenMonitoringPrometheus(
      jmxExporter: (() { final guardedValue = map['jmxExporter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOpenMonitoringPrometheusJmxExporter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeExporter: (() { final guardedValue = map['nodeExporter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOpenMonitoringPrometheusNodeExporter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
