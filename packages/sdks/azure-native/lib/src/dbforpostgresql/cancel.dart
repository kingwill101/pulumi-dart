/// Indicates if cancel must be triggered for the entire migration.
enum Cancel {
  true_("True"),
  false_("False");

  const Cancel(this.wireValue);
  final String wireValue;

  static Cancel fromValue(String value) {
    for (final item in Cancel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Cancel value: $value');
  }
}
