import 'package:pulumi/pulumi.dart' as pulumi;

/// Indication for database routing information from the data connection, by default only database routing information is allowed
enum DatabaseRouting implements pulumi.PulumiEnum<String> {
  valueSingle("Single"),
  valueMulti("Multi");

  const DatabaseRouting(this.wireValue);
  @override
  final String wireValue;

  static DatabaseRouting fromValue(String value) {
    for (final item in DatabaseRouting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseRouting value: $value');
  }
}
