/// The state of notifications feature.
enum NotificationsState {
  valueNone("None"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotificationsState(this.value);
  final String value;

  static NotificationsState fromValue(String value) {
    for (final item in NotificationsState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationsState value: $value');
  }
}

