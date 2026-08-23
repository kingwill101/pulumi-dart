/// Authentication type for connecting to the AmazonRdsForOracle database. Only used for Version 2.0.
enum AmazonRdsForOracleAuthenticationType {
  basic("Basic");

  const AmazonRdsForOracleAuthenticationType(this.wireValue);
  final String wireValue;

  static AmazonRdsForOracleAuthenticationType fromValue(String value) {
    for (final item in AmazonRdsForOracleAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmazonRdsForOracleAuthenticationType value: $value');
  }
}
