import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify prefix-list bounds.
enum Condition implements pulumi.PulumiEnum<String> {
  valueEqualTo("EqualTo"),
  valueGreaterThanOrEqualTo("GreaterThanOrEqualTo"),
  valueLesserThanOrEqualTo("LesserThanOrEqualTo"),
  valueRange("Range");

  const Condition(this.wireValue);
  @override
  final String wireValue;

  static Condition fromValue(String value) {
    for (final item in Condition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Condition value: $value');
  }
}
