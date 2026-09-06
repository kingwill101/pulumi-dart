import 'package:pulumi/pulumi.dart' as pulumi;

/// Supported option for a migration.
enum MigrationOption implements pulumi.PulumiEnum<String> {
  validate("Validate"),
  migrate("Migrate"),
  validateAndMigrate("ValidateAndMigrate");

  const MigrationOption(this.wireValue);
  @override
  final String wireValue;

  static MigrationOption fromValue(String value) {
    for (final item in MigrationOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationOption value: $value');
  }
}
