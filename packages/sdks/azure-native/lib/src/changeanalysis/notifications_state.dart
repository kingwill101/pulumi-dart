/// The state of notifications feature.
enum NotificationsState {
  valueNone("None"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotificationsState(this.wireValue);
  final String wireValue;

  static NotificationsState fromValue(String value) {
    for (final item in NotificationsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationsState value: $value');
  }
}
