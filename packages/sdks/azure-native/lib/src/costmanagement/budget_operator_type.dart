/// The operator to use for comparison.
enum BudgetOperatorType {
  valueIn("In");

  const BudgetOperatorType(this.wireValue);
  final String wireValue;

  static BudgetOperatorType fromValue(String value) {
    for (final item in BudgetOperatorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetOperatorType value: $value');
  }
}
