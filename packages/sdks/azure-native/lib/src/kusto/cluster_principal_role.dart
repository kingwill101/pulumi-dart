/// Cluster principal role.
enum ClusterPrincipalRole {
  valueAllDatabasesAdmin("AllDatabasesAdmin"),
  valueAllDatabasesViewer("AllDatabasesViewer"),
  valueAllDatabasesMonitor("AllDatabasesMonitor");

  const ClusterPrincipalRole(this.value);
  final String value;

  static ClusterPrincipalRole fromValue(String value) {
    for (final item in ClusterPrincipalRole.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterPrincipalRole value: $value');
  }
}

