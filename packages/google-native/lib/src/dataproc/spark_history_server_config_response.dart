// ignore_for_file: unused_element, unnecessary_cast

/// Spark History Server configuration for the workload.
class SparkHistoryServerConfigResponse {
  /// Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  final String dataprocCluster;

  /// Creates a new [SparkHistoryServerConfigResponse].
  /// [dataprocCluster] Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  SparkHistoryServerConfigResponse({required this.dataprocCluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataprocCluster': dataprocCluster};
  }

  factory SparkHistoryServerConfigResponse.fromMap(Map<String, dynamic> map) {
    return SparkHistoryServerConfigResponse(
      dataprocCluster: map['dataprocCluster'] as String,
    );
  }
}
