// ignore_for_file: unused_element, unnecessary_cast

class BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  final String? dataprocCluster;

  /// Creates a new [BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig].
  /// [dataprocCluster] Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig({
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

  factory BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig.fromMap(
      Map<String, dynamic> map) {
    return BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig(
      dataprocCluster: map['dataprocCluster'] == null
          ? null
          : map['dataprocCluster'] as String,
    );
  }
}
