import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL server license.
enum SqlServerLicense implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  yes("Yes"),
  no("No");

  const SqlServerLicense(this.wireValue);
  @override
  final String wireValue;

  static SqlServerLicense fromValue(String value) {
    for (final item in SqlServerLicense.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerLicense value: $value');
  }
}
