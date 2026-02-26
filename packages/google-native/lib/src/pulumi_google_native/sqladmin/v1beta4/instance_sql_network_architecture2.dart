/// The SQL network architecture for the instance.
enum InstanceSqlNetworkArchitecture2 {
  sqlNetworkArchitectureUnspecified("SQL_NETWORK_ARCHITECTURE_UNSPECIFIED"),
  newNetworkArchitecture("NEW_NETWORK_ARCHITECTURE"),
  oldNetworkArchitecture("OLD_NETWORK_ARCHITECTURE");

  const InstanceSqlNetworkArchitecture2(this.value);
  final String value;

  static InstanceSqlNetworkArchitecture2 fromValue(String value) {
    for (final item in InstanceSqlNetworkArchitecture2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceSqlNetworkArchitecture2 value: $value');
  }
}
