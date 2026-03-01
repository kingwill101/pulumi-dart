/// Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
enum ClusteringPolicy {
  enterpriseCluster("EnterpriseCluster"),
  oSSCluster("OSSCluster"),
  noCluster("NoCluster");

  const ClusteringPolicy(this.value);
  final String value;

  static ClusteringPolicy fromValue(String value) {
    for (final item in ClusteringPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusteringPolicy value: $value');
  }
}

