/// Specifies the name of the setting to which the content applies. Possible values are: FirstLogonCommands and AutoLogon.
enum SettingNames {
  autoLogon("AutoLogon"),
  firstLogonCommands("FirstLogonCommands");

  const SettingNames(this.wireValue);
  final String wireValue;

  static SettingNames fromValue(String value) {
    for (final item in SettingNames.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingNames value: $value');
  }
}
