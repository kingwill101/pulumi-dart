/// Indicates if data migration must start right away.
enum StartDataMigration {
  true_("True"),
  false_("False");

  const StartDataMigration(this.wireValue);
  final String wireValue;

  static StartDataMigration fromValue(String value) {
    for (final item in StartDataMigration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StartDataMigration value: $value');
  }
}

