import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable Geo-redundant or not for server backup.
enum GeoRedundantBackup implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GeoRedundantBackup(this.wireValue);
  @override
  final String wireValue;

  static GeoRedundantBackup fromValue(String value) {
    for (final item in GeoRedundantBackup.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoRedundantBackup value: $value');
  }
}
