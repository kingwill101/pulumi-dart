/// Indicates whether it is allowed to select multiple classes in this category.
enum MultiSelect {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MultiSelect(this.wireValue);
  final String wireValue;

  static MultiSelect fromValue(String value) {
    for (final item in MultiSelect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiSelect value: $value');
  }
}
