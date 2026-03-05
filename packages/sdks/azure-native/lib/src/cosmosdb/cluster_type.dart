/// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
enum ClusterType {
  valueProduction("Production"),
  valueNonProduction("NonProduction");

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

