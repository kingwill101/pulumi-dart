import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator for a given condition.
enum Operator implements pulumi.PulumiEnum<String> {
  equals("Equals"),
  notEquals("NotEquals"),
  contains("Contains"),
  doesNotContain("DoesNotContain");

  const Operator(this.wireValue);
  @override
  final String wireValue;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}
