import 'package:pulumi/pulumi.dart' as pulumi;

/// The SQL Server version the license covers.
enum Version implements pulumi.PulumiEnum<String> {
  valueSQLServer2012("SQL Server 2012"),
  valueSQLServer2014("SQL Server 2014");

  const Version(this.wireValue);
  @override
  final String wireValue;

  static Version fromValue(String value) {
    for (final item in Version.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Version value: $value');
  }
}
