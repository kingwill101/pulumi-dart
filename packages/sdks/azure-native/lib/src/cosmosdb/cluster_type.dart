/// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
enum ClusterType {
  valueProduction("Production"),
  valueNonProduction("NonProduction");

  const ClusterType(this.value);
  final String value;

  static ClusterType fromValue(String value) {
    for (final item in ClusterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterType value: $value');
  }
}

