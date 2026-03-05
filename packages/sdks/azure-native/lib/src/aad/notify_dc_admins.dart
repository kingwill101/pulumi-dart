/// Should domain controller admins be notified
enum NotifyDcAdmins {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NotifyDcAdmins(this.wireValue);
  final String wireValue;

  static NotifyDcAdmins fromValue(String value) {
    for (final item in NotifyDcAdmins.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotifyDcAdmins value: $value');
  }
}

