/// The category of the budget, whether the budget tracks cost or usage.
enum CategoryType {
  cost("Cost");

  const CategoryType(this.value);
  final String value;

  static CategoryType fromValue(String value) {
    for (final item in CategoryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoryType value: $value');
  }
}

