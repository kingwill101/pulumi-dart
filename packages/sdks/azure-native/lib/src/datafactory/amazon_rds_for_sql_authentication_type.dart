/// The type used for authentication. Type: string.
enum AmazonRdsForSqlAuthenticationType {
  valueSQL("SQL"),
  valueWindows("Windows");

  const AmazonRdsForSqlAuthenticationType(this.value);
  final String value;

  static AmazonRdsForSqlAuthenticationType fromValue(String value) {
    for (final item in AmazonRdsForSqlAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmazonRdsForSqlAuthenticationType value: $value');
  }
}

