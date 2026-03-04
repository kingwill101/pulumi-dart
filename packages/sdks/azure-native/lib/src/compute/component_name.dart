/// The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
enum ComponentName {
  valueMicrosoftWindowsShellSetup("Microsoft-Windows-Shell-Setup");

  const ComponentName(this.wireValue);
  final String wireValue;

  static ComponentName fromValue(String value) {
    for (final item in ComponentName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComponentName value: $value');
  }
}
