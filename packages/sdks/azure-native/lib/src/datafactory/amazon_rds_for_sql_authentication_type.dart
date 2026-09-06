import 'package:pulumi/pulumi.dart' as pulumi;

/// The type used for authentication. Type: string.
enum AmazonRdsForSqlAuthenticationType implements pulumi.PulumiEnum<String> {
  sQL("SQL"),
  windows("Windows");

  const AmazonRdsForSqlAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AmazonRdsForSqlAuthenticationType fromValue(String value) {
    for (final item in AmazonRdsForSqlAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmazonRdsForSqlAuthenticationType value: $value');
  }
}
