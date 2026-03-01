/// Supported option for a migration.
enum MigrationOption {
  validate("Validate"),
  migrate("Migrate"),
  validateAndMigrate("ValidateAndMigrate");

  const MigrationOption(this.value);
  final String value;

  static MigrationOption fromValue(String value) {
    for (final item in MigrationOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationOption value: $value');
  }
}

