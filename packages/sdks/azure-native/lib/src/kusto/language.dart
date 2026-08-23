/// The language name, for example Python.
enum Language {
  valuePython("Python");

  const Language(this.wireValue);
  final String wireValue;

  static Language fromValue(String value) {
    for (final item in Language.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Language value: $value');
  }
}
