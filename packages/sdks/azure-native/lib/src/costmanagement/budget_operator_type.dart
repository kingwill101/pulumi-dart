/// The operator to use for comparison.
enum BudgetOperatorType {
  valueIn("In");

  const BudgetOperatorType(this.value);
  final String value;

  static BudgetOperatorType fromValue(String value) {
    for (final item in BudgetOperatorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetOperatorType value: $value');
  }
}

