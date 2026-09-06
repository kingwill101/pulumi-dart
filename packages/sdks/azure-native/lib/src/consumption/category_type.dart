import 'package:pulumi/pulumi.dart' as pulumi;

/// The category of the budget, whether the budget tracks cost or usage.
enum CategoryType implements pulumi.PulumiEnum<String> {
  cost("Cost");

  const CategoryType(this.wireValue);
  @override
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
