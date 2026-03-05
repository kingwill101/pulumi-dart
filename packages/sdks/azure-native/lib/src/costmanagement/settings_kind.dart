/// Specifies the kind of settings.
enum SettingsKind {
  valueTaginheritance("taginheritance");

  const SettingsKind(this.wireValue);
  final String wireValue;

  static SettingsKind fromValue(String value) {
    for (final item in SettingsKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsKind value: $value');
  }
}

