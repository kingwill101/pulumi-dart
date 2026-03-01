/// Specifies the name of the setting to which the content applies. Possible values are: FirstLogonCommands and AutoLogon.
enum SettingNames {
  valueAutoLogon("AutoLogon"),
  valueFirstLogonCommands("FirstLogonCommands");

  const SettingNames(this.value);
  final String value;

  static SettingNames fromValue(String value) {
    for (final item in SettingNames.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingNames value: $value');
  }
}

