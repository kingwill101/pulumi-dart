import 'package:pulumi/pulumi.dart' as pulumi;

/// Comparison operator to apply to the selector when specifying which elements
/// in the collection this exception applies to.
enum ExceptionSelectorMatchOperator implements pulumi.PulumiEnum<String> {
  equals("Equals");

  const ExceptionSelectorMatchOperator(this.wireValue);
  @override
  final String wireValue;

  static ExceptionSelectorMatchOperator fromValue(String value) {
    for (final item in ExceptionSelectorMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionSelectorMatchOperator value: $value');
  }
}
