/// Cluster type
enum ClusterType {
  aKS("AKS");

  const ClusterType(this.wireValue);
  final String wireValue;

  static ClusterType fromValue(String value) {
    for (final item in ClusterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterType value: $value');
  }
}
