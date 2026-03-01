/// The language name, for example Python.
enum Language {
  valuePython("Python");

  const Language(this.value);
  final String value;

  static Language fromValue(String value) {
    for (final item in Language.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Language value: $value');
  }
}

