/// The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
enum FailoverModeType {
  valueNone("None"),
  valueManual("Manual");

  const FailoverModeType(this.value);
  final String value;

  static FailoverModeType fromValue(String value) {
    for (final item in FailoverModeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverModeType value: $value');
  }
}

