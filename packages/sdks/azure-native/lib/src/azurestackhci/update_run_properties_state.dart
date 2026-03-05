/// State of the update run.
enum UpdateRunPropertiesState {
  valueUnknown("Unknown"),
  valueSucceeded("Succeeded"),
  valueInProgress("InProgress"),
  valueFailed("Failed");

  const UpdateRunPropertiesState(this.wireValue);
  final String wireValue;

  static UpdateRunPropertiesState fromValue(String value) {
    for (final item in UpdateRunPropertiesState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateRunPropertiesState value: $value');
  }
}

