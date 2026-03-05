/// Activity state. This is an optional property and if not provided, the state will be Active by default.
enum ActivityState {
  valueActive("Active"),
  valueInactive("Inactive");

  const ActivityState(this.wireValue);
  final String wireValue;

  static ActivityState fromValue(String value) {
    for (final item in ActivityState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActivityState value: $value');
  }
}

