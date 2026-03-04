/// Unique name for the Managed CCF.
enum LanguageRuntime {
  valueCPP("CPP"),
  valueJS("JS");

  const LanguageRuntime(this.wireValue);
  final String wireValue;

  static LanguageRuntime fromValue(String value) {
    for (final item in LanguageRuntime.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LanguageRuntime value: $value');
  }
}
