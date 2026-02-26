// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSparkSparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History Server for the connection if the form of projects/[projectId]/regions/[region]/clusters/<span pulumi-lang-nodejs="[clusterName]" pulumi-lang-dotnet="[ClusterName]" pulumi-lang-go="[clusterName]" pulumi-lang-python="[cluster_name]" pulumi-lang-yaml="[clusterName]" pulumi-lang-java="[clusterName]">[cluster_name]</span>.
  final String? dataprocCluster;

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
