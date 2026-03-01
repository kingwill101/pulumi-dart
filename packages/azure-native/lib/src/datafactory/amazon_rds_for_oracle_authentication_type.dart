/// Authentication type for connecting to the AmazonRdsForOracle database. Only used for Version 2.0.
enum AmazonRdsForOracleAuthenticationType {
  valueBasic("Basic");

  const AmazonRdsForOracleAuthenticationType(this.value);
  final String value;

  static AmazonRdsForOracleAuthenticationType fromValue(String value) {
    for (final item in AmazonRdsForOracleAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmazonRdsForOracleAuthenticationType value: $value');
  }
}

