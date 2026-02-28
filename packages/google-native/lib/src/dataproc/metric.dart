// ignore_for_file: unused_element, unnecessary_cast

import 'metric_metric_source.dart';

/// A Dataproc custom metric.
class Metric {
  /// Optional. Specify one or more Custom metrics (https://cloud.google.com/dataproc/docs/guides/dataproc-metrics#custom_metrics) to collect for the metric course (for the SPARK metric source (any Spark metric (https://spark.apache.org/docs/latest/monitoring.html#metrics) can be specified).Provide metrics in the following format: METRIC_SOURCE: INSTANCE:GROUP:METRIC Use camelcase as appropriate.Examples: yarn:ResourceManager:QueueMetrics:AppsCompleted spark:driver:DAGScheduler:job.allJobs sparkHistoryServer:JVM:Memory:NonHeapMemoryUsage.committed hiveserver2:JVM:Memory:NonHeapMemoryUsage.used Notes: Only the specified overridden metrics are collected for the metric source. For example, if one or more spark:executive metrics are listed as metric overrides, other SPARK metrics are not collected. The collection of the metrics for other enabled custom metric sources is unaffected. For example, if both SPARK andd YARN metric sources are enabled, and overrides are provided for Spark metrics only, all YARN metrics are collected.
  final List<String>? metricOverrides;

  /// A standard set of metrics is collected unless metricOverrides are specified for the metric source (see Custom metrics (https://cloud.google.com/dataproc/docs/guides/dataproc-metrics#custom_metrics) for more information).
  final MetricMetricSource metricSource;

  /// Creates a new [Metric].
  /// [metricOverrides] Optional. Specify one or more Custom metrics (https://cloud.google.com/dataproc/docs/guides/dataproc-metrics#custom_metrics) to collect for the metric course (for the SPARK metric source (any Spark metric (https://spark.apache.org/docs/latest/monitoring.html#metrics) can be specified).Provide metrics in the following format: METRIC_SOURCE: INSTANCE:GROUP:METRIC Use camelcase as appropriate.Examples: yarn:ResourceManager:QueueMetrics:AppsCompleted spark:driver:DAGScheduler:job.allJobs sparkHistoryServer:JVM:Memory:NonHeapMemoryUsage.committed hiveserver2:JVM:Memory:NonHeapMemoryUsage.used Notes: Only the specified overridden metrics are collected for the metric source. For example, if one or more spark:executive metrics are listed as metric overrides, other SPARK metrics are not collected. The collection of the metrics for other enabled custom metric sources is unaffected. For example, if both SPARK andd YARN metric sources are enabled, and overrides are provided for Spark metrics only, all YARN metrics are collected.
  /// [metricSource] A standard set of metrics is collected unless metricOverrides are specified for the metric source (see Custom metrics (https://cloud.google.com/dataproc/docs/guides/dataproc-metrics#custom_metrics) for more information).
  Metric({
    this.metricOverrides,
    required this.metricSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricOverridesValue = metricOverrides;
    if (metricOverridesValue != null) {
      map['metricOverrides'] = metricOverridesValue;
    }
    map['metricSource'] = metricSource.value;
    return map;
  }

  factory Metric.fromMap(Map<String, dynamic> map) {
    return Metric(
      metricOverrides: map['metricOverrides'] == null
          ? null
          : (map['metricOverrides'] as List).cast<String>(),
      metricSource: MetricMetricSource.fromValue(map['metricSource'] as String),
    );
  }
}
