/// Setting for trusted services.
enum ByPassSelection {
  valueNone("None"),
  valueAzureServices("AzureServices");

  const ByPassSelection(this.value);
  final String value;

  static ByPassSelection fromValue(String value) {
    for (final item in ByPassSelection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ByPassSelection value: $value');
  }
}

