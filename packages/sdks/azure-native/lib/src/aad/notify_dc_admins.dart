/// Should domain controller admins be notified
enum NotifyDcAdmins {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotifyDcAdmins(this.value);
  final String value;

  static NotifyDcAdmins fromValue(String value) {
    for (final item in NotifyDcAdmins.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotifyDcAdmins value: $value');
  }
}

