/// The language extension name.
enum LanguageExtensionName {
  valuePYTHON("PYTHON"),
  valueR("R");

  const LanguageExtensionName(this.value);
  final String value;

  static LanguageExtensionName fromValue(String value) {
    for (final item in LanguageExtensionName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LanguageExtensionName value: $value');
  }
}

