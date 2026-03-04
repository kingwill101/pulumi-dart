/// Enabled or Disabled flag to turn on Group-based filtered sync
enum FilteredSync {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FilteredSync(this.wireValue);
  final String wireValue;

  static FilteredSync fromValue(String value) {
    for (final item in FilteredSync.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilteredSync value: $value');
  }
}
