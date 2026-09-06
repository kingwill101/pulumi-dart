import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode used to perform the migration: Online or Offline.
enum MigrationMode implements pulumi.PulumiEnum<String> {
  offline("Offline"),
  online("Online");

  const MigrationMode(this.wireValue);
  @override
  final String wireValue;

  static MigrationMode fromValue(String value) {
    for (final item in MigrationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationMode value: $value');
  }
}
