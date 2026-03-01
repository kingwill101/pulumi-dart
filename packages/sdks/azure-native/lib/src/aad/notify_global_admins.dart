/// Should global admins be notified
enum NotifyGlobalAdmins {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotifyGlobalAdmins(this.value);
  final String value;

  static NotifyGlobalAdmins fromValue(String value) {
    for (final item in NotifyGlobalAdmins.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotifyGlobalAdmins value: $value');
  }
}

