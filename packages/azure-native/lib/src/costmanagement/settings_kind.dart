/// Specifies the kind of settings.
enum SettingsKind {
  valueTaginheritance("taginheritance");

  const SettingsKind(this.value);
  final String value;

  static SettingsKind fromValue(String value) {
    for (final item in SettingsKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsKind value: $value');
  }
}

