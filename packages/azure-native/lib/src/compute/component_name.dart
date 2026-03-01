/// The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
enum ComponentName {
  valueMicrosoftWindowsShellSetup("Microsoft-Windows-Shell-Setup");

  const ComponentName(this.value);
  final String value;

  static ComponentName fromValue(String value) {
    for (final item in ComponentName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComponentName value: $value');
  }
}

