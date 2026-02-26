// ignore_for_file: unused_element, unnecessary_cast

/// Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
class ClusterMetricsResponse {
  /// The HDFS metrics.
  final Map<String, String> hdfsMetrics;

  /// YARN metrics.
  final Map<String, String> yarnMetrics;

  ClusterMetricsResponse({
    required this.hdfsMetrics,
    required this.yarnMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hdfsMetrics'] = hdfsMetrics;
    map['yarnMetrics'] = yarnMetrics;
    return map;
  }

  factory ClusterMetricsResponse.fromMap(Map<String, dynamic> map) {
    return ClusterMetricsResponse(
      hdfsMetrics: (map['hdfsMetrics'] as Map).cast<String, String>(),
      yarnMetrics: (map['yarnMetrics'] as Map).cast<String, String>(),
    );
  }
}
