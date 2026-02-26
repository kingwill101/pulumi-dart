// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_open_monitoring_prometheus_jmx_exporter/cluster_open_monitoring_prometheus_jmx_exporter.dart';
import '../cluster_open_monitoring_prometheus_node_exporter/cluster_open_monitoring_prometheus_node_exporter.dart';

class ClusterOpenMonitoringPrometheus {
  /// Configuration block for JMX Exporter. See<span pulumi-lang-nodejs=" openMonitoring " pulumi-lang-dotnet=" OpenMonitoring " pulumi-lang-go=" openMonitoring " pulumi-lang-python=" open_monitoring " pulumi-lang-yaml=" openMonitoring " pulumi-lang-java=" openMonitoring "> open_monitoring </span>prometheus<span pulumi-lang-nodejs=" jmxExporter " pulumi-lang-dotnet=" JmxExporter " pulumi-lang-go=" jmxExporter " pulumi-lang-python=" jmx_exporter " pulumi-lang-yaml=" jmxExporter " pulumi-lang-java=" jmxExporter "> jmx_exporter </span>Argument Reference below.
  final ClusterOpenMonitoringPrometheusJmxExporter? jmxExporter;

  /// Configuration block for Node Exporter. See<span pulumi-lang-nodejs=" openMonitoring " pulumi-lang-dotnet=" OpenMonitoring " pulumi-lang-go=" openMonitoring " pulumi-lang-python=" open_monitoring " pulumi-lang-yaml=" openMonitoring " pulumi-lang-java=" openMonitoring "> open_monitoring </span>prometheus<span pulumi-lang-nodejs=" nodeExporter " pulumi-lang-dotnet=" NodeExporter " pulumi-lang-go=" nodeExporter " pulumi-lang-python=" node_exporter " pulumi-lang-yaml=" nodeExporter " pulumi-lang-java=" nodeExporter "> node_exporter </span>Argument Reference below.
  final ClusterOpenMonitoringPrometheusNodeExporter? nodeExporter;

  ClusterOpenMonitoringPrometheus({
    this.jmxExporter,
    this.nodeExporter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jmxExporterValue = jmxExporter;
    if (jmxExporterValue != null) {
      map['jmxExporter'] = jmxExporterValue.toMap();
    }
    final nodeExporterValue = nodeExporter;
    if (nodeExporterValue != null) {
      map['nodeExporter'] = nodeExporterValue.toMap();
    }
    return map;
  }

  factory ClusterOpenMonitoringPrometheus.fromMap(Map<String, dynamic> map) {
    return ClusterOpenMonitoringPrometheus(
      jmxExporter: map['jmxExporter'] == null
          ? null
          : ClusterOpenMonitoringPrometheusJmxExporter.fromMap(
              (map['jmxExporter'] as Map).cast<String, dynamic>()),
      nodeExporter: map['nodeExporter'] == null
          ? null
          : ClusterOpenMonitoringPrometheusNodeExporter.fromMap(
              (map['nodeExporter'] as Map).cast<String, dynamic>()),
    );
  }
}
