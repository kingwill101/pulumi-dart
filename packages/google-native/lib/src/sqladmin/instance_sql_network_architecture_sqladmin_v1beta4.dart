/// The SQL network architecture for the instance.
enum InstanceSqlNetworkArchitectureSqladminV1beta4 {
  sqlNetworkArchitectureUnspecified("SQL_NETWORK_ARCHITECTURE_UNSPECIFIED"),
  newNetworkArchitecture("NEW_NETWORK_ARCHITECTURE"),
  oldNetworkArchitecture("OLD_NETWORK_ARCHITECTURE");

  const InstanceSqlNetworkArchitectureSqladminV1beta4(this.value);
  final String value;

  static InstanceSqlNetworkArchitectureSqladminV1beta4 fromValue(String value) {
    for (final item in InstanceSqlNetworkArchitectureSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSqlNetworkArchitectureSqladminV1beta4 value: $value');
  }
}

