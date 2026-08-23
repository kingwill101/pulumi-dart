/// The category of the budget, whether the budget tracks cost or usage.
enum CategoryType {
  cost("Cost");

  const CategoryType(this.wireValue);
  final String wireValue;

  static CategoryType fromValue(String value) {
    for (final item in CategoryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoryType value: $value');
  }
}
