import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if the server is configured to create geographically redundant backups.
enum GeographicallyRedundantBackup implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const GeographicallyRedundantBackup(this.wireValue);
  @override
  final String wireValue;

  static GeographicallyRedundantBackup fromValue(String value) {
    for (final item in GeographicallyRedundantBackup.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeographicallyRedundantBackup value: $value');
  }
}
