/// Indicates whether it is allowed to select multiple classes in this category.
enum MultiSelect {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MultiSelect(this.value);
  final String value;

  static MultiSelect fromValue(String value) {
    for (final item in MultiSelect.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiSelect value: $value');
  }
}

