// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_dataproc_metric_config_metric.dart';

class ClusterClusterConfigDataprocMetricConfig {
  /// Metrics sources to enable.
  final List<ClusterClusterConfigDataprocMetricConfigMetric> metrics;

  /// Creates a new [ClusterClusterConfigDataprocMetricConfig].
  /// [metrics] Metrics sources to enable.
  ClusterClusterConfigDataprocMetricConfig({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] = pulumi.Input.encodeList<
        ClusterClusterConfigDataprocMetricConfigMetric,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    return map;
  }

  factory ClusterClusterConfigDataprocMetricConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigDataprocMetricConfig(
      metrics: pulumi.Input.decodeList<
              ClusterClusterConfigDataprocMetricConfigMetric>(
          map['metrics'],
          (value) => ClusterClusterConfigDataprocMetricConfigMetric.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
