/// Unique name for the Managed CCF.
enum LanguageRuntime {
  valueCPP("CPP"),
  valueJS("JS");

  const LanguageRuntime(this.value);
  final String value;

  static LanguageRuntime fromValue(String value) {
    for (final item in LanguageRuntime.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LanguageRuntime value: $value');
  }
}

