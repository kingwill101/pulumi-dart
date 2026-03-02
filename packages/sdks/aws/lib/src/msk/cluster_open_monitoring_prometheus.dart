// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_open_monitoring_prometheus_jmx_exporter.dart';
import 'cluster_open_monitoring_prometheus_node_exporter.dart';

class ClusterOpenMonitoringPrometheus {
  /// Configuration block for JMX Exporter. See open_monitoring prometheus jmx_exporter Argument Reference below.
  final pulumi.Input<ClusterOpenMonitoringPrometheusJmxExporter>? jmxExporter;
  /// Configuration block for Node Exporter. See open_monitoring prometheus node_exporter Argument Reference below.
  final pulumi.Input<ClusterOpenMonitoringPrometheusNodeExporter>? nodeExporter;

  /// Creates a new [ClusterOpenMonitoringPrometheus].
  /// [jmxExporter] Configuration block for JMX Exporter. See open_monitoring prometheus jmx_exporter Argument Reference below.
  /// [nodeExporter] Configuration block for Node Exporter. See open_monitoring prometheus node_exporter Argument Reference below.
  ClusterOpenMonitoringPrometheus({
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
      jmxExporter: map['jmxExporter'] == null ? null : ((ClusterOpenMonitoringPrometheusJmxExporter.fromMap((map['jmxExporter']! as Map).cast<String, dynamic>())).input()).input(),
      nodeExporter: map['nodeExporter'] == null ? null : ((ClusterOpenMonitoringPrometheusNodeExporter.fromMap((map['nodeExporter']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

