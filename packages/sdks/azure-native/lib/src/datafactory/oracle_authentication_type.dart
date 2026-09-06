import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication type for connecting to the Oracle database. Only used for Version 2.0.
enum OracleAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic");

  const OracleAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static OracleAuthenticationType fromValue(String value) {
    for (final item in OracleAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OracleAuthenticationType value: $value');
  }
}
