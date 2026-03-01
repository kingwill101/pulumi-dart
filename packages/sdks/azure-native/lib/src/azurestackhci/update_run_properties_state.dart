/// State of the update run.
enum UpdateRunPropertiesState {
  valueUnknown("Unknown"),
  valueSucceeded("Succeeded"),
  valueInProgress("InProgress"),
  valueFailed("Failed");

  const UpdateRunPropertiesState(this.value);
  final String value;

  static UpdateRunPropertiesState fromValue(String value) {
    for (final item in UpdateRunPropertiesState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateRunPropertiesState value: $value');
  }
}

