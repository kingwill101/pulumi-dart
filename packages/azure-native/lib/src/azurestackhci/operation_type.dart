/// The intended operation for a cluster.
enum OperationType {
  clusterProvisioning("ClusterProvisioning"),
  clusterUpgrade("ClusterUpgrade");

  const OperationType(this.value);
  final String value;

  static OperationType fromValue(String value) {
    for (final item in OperationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationType value: $value');
  }
}

