import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication type for connecting to the AmazonRdsForOracle database. Only used for Version 2.0.
enum AmazonRdsForOracleAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic");

  const AmazonRdsForOracleAuthenticationType(this.wireValue);
  @override
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
