// ignore_for_file: unused_element, unnecessary_cast


class ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  /// - - -
  final String? dataprocCluster;

  /// Creates a new [ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig].
  /// [dataprocCluster] Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocCluster': ?dataprocCluster,
    };
  }

  factory ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig(
      dataprocCluster: map['dataprocCluster'] == null ? null : map['dataprocCluster'] as String,
    );
  }
}

