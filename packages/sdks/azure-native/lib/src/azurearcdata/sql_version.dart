import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server version.
enum SqlVersion implements pulumi.PulumiEnum<String> {
  valueSQLServer2012("SQL Server 2012"),
  valueSQLServer2014("SQL Server 2014"),
  valueSQLServer2016("SQL Server 2016"),
  valueSQLServer2017("SQL Server 2017"),
  valueSQLServer2019("SQL Server 2019"),
  valueSQLServer2022("SQL Server 2022"),
  valueUnknown("Unknown");

  const SqlVersion(this.wireValue);
  @override
  final String wireValue;

  static SqlVersion fromValue(String value) {
    for (final item in SqlVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlVersion value: $value');
  }
}
