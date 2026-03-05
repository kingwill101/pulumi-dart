/// The language extension name.
enum LanguageExtensionName {
  valuePYTHON("PYTHON"),
  valueR("R");

  const LanguageExtensionName(this.wireValue);
  final String wireValue;

  static LanguageExtensionName fromValue(String value) {
    for (final item in LanguageExtensionName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LanguageExtensionName value: $value');
  }
}

