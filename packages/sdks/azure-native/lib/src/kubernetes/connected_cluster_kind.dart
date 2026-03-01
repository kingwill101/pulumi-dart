/// The kind of connected cluster.
enum ConnectedClusterKind {
  valueProvisionedCluster("ProvisionedCluster");

  const ConnectedClusterKind(this.value);
  final String value;

  static ConnectedClusterKind fromValue(String value) {
    for (final item in ConnectedClusterKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectedClusterKind value: $value');
  }
}

