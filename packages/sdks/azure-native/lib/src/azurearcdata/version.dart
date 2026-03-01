/// The SQL Server version the license covers.
enum Version {
  valueSQLServer2012("SQL Server 2012"),
  valueSQLServer2014("SQL Server 2014");

  const Version(this.value);
  final String value;

  static Version fromValue(String value) {
    for (final item in Version.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Version value: $value');
  }
}

