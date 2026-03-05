/// Status of the database.
enum RecoveryMode {
  valueFull("Full"),
  valueBulkLogged("Bulk-logged"),
  valueSimple("Simple");

  const RecoveryMode(this.wireValue);
  final String wireValue;

  static RecoveryMode fromValue(String value) {
    for (final item in RecoveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryMode value: $value');
  }
}

