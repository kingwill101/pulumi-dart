/// Indicates if cutover must be triggered for the entire migration.
enum TriggerCutover {
  true_("True"),
  false_("False");

  const TriggerCutover(this.value);
  final String value;

  static TriggerCutover fromValue(String value) {
    for (final item in TriggerCutover.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerCutover value: $value');
  }
}

