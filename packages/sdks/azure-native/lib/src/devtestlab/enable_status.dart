/// The status of the schedule (i.e. Enabled, Disabled)
enum EnableStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const EnableStatus(this.value);
  final String value;

  static EnableStatus fromValue(String value) {
    for (final item in EnableStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableStatus value: $value');
  }
}

