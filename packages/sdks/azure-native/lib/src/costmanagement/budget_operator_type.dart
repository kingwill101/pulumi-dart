import 'package:pulumi/pulumi.dart' as pulumi;

/// The operator to use for comparison.
enum BudgetOperatorType implements pulumi.PulumiEnum<String> {
  valueIn("In");

  const BudgetOperatorType(this.wireValue);
  @override
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
