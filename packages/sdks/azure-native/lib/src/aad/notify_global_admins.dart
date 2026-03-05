/// Should global admins be notified
enum NotifyGlobalAdmins {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotifyGlobalAdmins(this.wireValue);
  final String wireValue;

  static NotifyGlobalAdmins fromValue(String value) {
    for (final item in NotifyGlobalAdmins.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotifyGlobalAdmins value: $value');
  }
}

