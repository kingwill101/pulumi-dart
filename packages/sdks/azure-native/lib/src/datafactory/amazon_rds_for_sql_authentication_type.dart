/// The type used for authentication. Type: string.
enum AmazonRdsForSqlAuthenticationType {
  sQL("SQL"),
  windows("Windows");

  const AmazonRdsForSqlAuthenticationType(this.wireValue);
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
