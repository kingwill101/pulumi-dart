/// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
enum ActivityOnInactiveMarkAs {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueSkipped("Skipped");

  const ActivityOnInactiveMarkAs(this.value);
  final String value;

  static ActivityOnInactiveMarkAs fromValue(String value) {
    for (final item in ActivityOnInactiveMarkAs.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActivityOnInactiveMarkAs value: $value');
  }
}

