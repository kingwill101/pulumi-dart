// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSparkSparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History Server for the connection if the form of projects/[projectId]/regions/[region]/clusters/[cluster_name].
  final String? dataprocCluster;

  /// Creates a new [ConnectionSparkSparkHistoryServerConfig].
  /// [dataprocCluster] Resource name of an existing Dataproc Cluster to act as a Spark History Server for the connection if the form of projects/[projectId]/regions/[region]/clusters/[cluster_name].
  ConnectionSparkSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataprocClusterValue = dataprocCluster;
    if (dataprocClusterValue != null) {
      map['dataprocCluster'] = dataprocClusterValue;
    }
    return map;
  }

  factory ConnectionSparkSparkHistoryServerConfig.fromMap(
      Map<String, dynamic> map) {
    return ConnectionSparkSparkHistoryServerConfig(
      dataprocCluster: map['dataprocCluster'] == null
          ? null
          : map['dataprocCluster'] as String,
    );
  }
}
