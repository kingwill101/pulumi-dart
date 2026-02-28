// ignore_for_file: unused_element, unnecessary_cast


/// Spark History Server configuration for the workload.
class SparkHistoryServerConfig {
  /// Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  final String? dataprocCluster;

  /// Creates a new [SparkHistoryServerConfig].
  /// [dataprocCluster] Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  SparkHistoryServerConfig({
    this.dataprocCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocCluster': ?dataprocCluster,
    };
  }

  factory SparkHistoryServerConfig.fromMap(Map<String, dynamic> map) {
    return SparkHistoryServerConfig(
      dataprocCluster: map['dataprocCluster'] == null ? null : map['dataprocCluster'] as String,
    );
  }
}

