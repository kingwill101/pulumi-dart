/// The status of the schedule (i.e. Enabled, Disabled)
enum EnableStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const EnableStatus(this.wireValue);
  final String wireValue;

  static EnableStatus fromValue(String value) {
    for (final item in EnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableStatus value: $value');
  }
}

