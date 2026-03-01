/// Enabled or Disabled flag to turn on Group-based filtered sync
enum FilteredSync {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FilteredSync(this.value);
  final String value;

  static FilteredSync fromValue(String value) {
    for (final item in FilteredSync.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilteredSync value: $value');
  }
}

