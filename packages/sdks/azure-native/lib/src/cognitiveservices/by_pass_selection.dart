/// Setting for trusted services.
enum ByPassSelection {
  valueNone("None"),
  valueAzureServices("AzureServices");

  const ByPassSelection(this.wireValue);
  final String wireValue;

  static ByPassSelection fromValue(String value) {
    for (final item in ByPassSelection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ByPassSelection value: $value');
  }
}
