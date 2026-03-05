/// Supported option for a migration.
enum MigrationOption {
  validate("Validate"),
  migrate("Migrate"),
  validateAndMigrate("ValidateAndMigrate");

  const MigrationOption(this.wireValue);
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

