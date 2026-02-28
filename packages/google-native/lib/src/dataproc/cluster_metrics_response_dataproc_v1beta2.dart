// ignore_for_file: unused_element, unnecessary_cast

/// Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
class ClusterMetricsResponseDataprocV1beta2 {
  /// The HDFS metrics.
  final Map<String, String> hdfsMetrics;

  /// The YARN metrics.
  final Map<String, String> yarnMetrics;

  /// Creates a new [ClusterMetricsResponseDataprocV1beta2].
  /// [hdfsMetrics] The HDFS metrics.
  /// [yarnMetrics] The YARN metrics.
  ClusterMetricsResponseDataprocV1beta2({
    required this.hdfsMetrics,
    required this.yarnMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hdfsMetrics'] = hdfsMetrics;
    map['yarnMetrics'] = yarnMetrics;
    return map;
  }

  factory ClusterMetricsResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ClusterMetricsResponseDataprocV1beta2(
      hdfsMetrics: (map['hdfsMetrics'] as Map).cast<String, String>(),
      yarnMetrics: (map['yarnMetrics'] as Map).cast<String, String>(),
    );
  }
}
