/// Activity state. This is an optional property and if not provided, the state will be Active by default.
enum ActivityState {
  valueActive("Active"),
  valueInactive("Inactive");

  const ActivityState(this.value);
  final String value;

  static ActivityState fromValue(String value) {
    for (final item in ActivityState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActivityState value: $value');
  }
}

