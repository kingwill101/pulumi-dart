// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_open_monitoring_prometheus/cluster_open_monitoring_prometheus.dart';

class ClusterOpenMonitoring {
  /// Configuration block for Prometheus settings for open monitoring. See<span pulumi-lang-nodejs=" openMonitoring " pulumi-lang-dotnet=" OpenMonitoring " pulumi-lang-go=" openMonitoring " pulumi-lang-python=" open_monitoring " pulumi-lang-yaml=" openMonitoring " pulumi-lang-java=" openMonitoring "> open_monitoring </span>prometheus Argument Reference below.
  final ClusterOpenMonitoringPrometheus prometheus;

  ClusterOpenMonitoring({
    required this.prometheus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['prometheus'] = prometheus.toMap();
    return map;
  }

  factory ClusterOpenMonitoring.fromMap(Map<String, dynamic> map) {
    return ClusterOpenMonitoring(
      prometheus: ClusterOpenMonitoringPrometheus.fromMap(
          (map['prometheus'] as Map).cast<String, dynamic>()),
    );
  }
}
