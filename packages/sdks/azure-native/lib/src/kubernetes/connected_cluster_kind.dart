/// The kind of connected cluster.
enum ConnectedClusterKind {
  valueProvisionedCluster("ProvisionedCluster");

  const ConnectedClusterKind(this.wireValue);
  final String wireValue;

  static ConnectedClusterKind fromValue(String value) {
    for (final item in ConnectedClusterKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectedClusterKind value: $value');
  }
}
