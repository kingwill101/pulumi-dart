/// The overwrite option for the SSIS project migration
enum SsisMigrationOverwriteOption {
  valueIgnore("Ignore"),
  valueOverwrite("Overwrite");

  const SsisMigrationOverwriteOption(this.value);
  final String value;

  static SsisMigrationOverwriteOption fromValue(String value) {
    for (final item in SsisMigrationOverwriteOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisMigrationOverwriteOption value: $value');
  }
}

