/// Status of the database.
enum RecoveryMode {
  valueFull("Full"),
  valueBulkLogged("Bulk-logged"),
  valueSimple("Simple");

  const RecoveryMode(this.value);
  final String value;

  static RecoveryMode fromValue(String value) {
    for (final item in RecoveryMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryMode value: $value');
  }
}

