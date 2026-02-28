// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_open_monitoring_prometheus.dart';

class ClusterOpenMonitoring {
  /// Configuration block for Prometheus settings for open monitoring. See open_monitoring prometheus Argument Reference below.
  final ClusterOpenMonitoringPrometheus prometheus;

  /// Creates a new [ClusterOpenMonitoring].
  /// [prometheus] Configuration block for Prometheus settings for open monitoring. See open_monitoring prometheus Argument Reference below.
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
