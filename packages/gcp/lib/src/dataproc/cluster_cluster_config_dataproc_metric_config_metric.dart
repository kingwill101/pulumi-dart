// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigDataprocMetricConfigMetric {
  /// One or more [available OSS metrics] (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) to collect for the metric course.
  ///
  /// - - -
  final List<String>? metricOverrides;

  /// A source for the collection of Dataproc OSS metrics (see [available OSS metrics](https://cloud.google.com//dataproc/docs/guides/monitoring#available_oss_metrics)).
  final String metricSource;

  /// Creates a new [ClusterClusterConfigDataprocMetricConfigMetric].
  /// [metricOverrides] One or more [available OSS metrics] (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) to collect for the metric course.
  /// [metricSource] A source for the collection of Dataproc OSS metrics (see [available OSS metrics](https://cloud.google.com//dataproc/docs/guides/monitoring#available_oss_metrics)).
  ClusterClusterConfigDataprocMetricConfigMetric({
    this.metricOverrides,
    required this.metricSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricOverridesValue = metricOverrides;
    if (metricOverridesValue != null) {
      map['metricOverrides'] = metricOverridesValue;
    }
    map['metricSource'] = metricSource;
    return map;
  }

  factory ClusterClusterConfigDataprocMetricConfigMetric.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigDataprocMetricConfigMetric(
      metricOverrides: map['metricOverrides'] == null
          ? null
          : (map['metricOverrides'] as List).cast<String>(),
      metricSource: map['metricSource'] as String,
    );
  }
}
