import 'package:pulumi/pulumi.dart' as pulumi;

/// Weeks of month.
enum WeeksOfMonth implements pulumi.PulumiEnum<String> {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last");

  const WeeksOfMonth(this.wireValue);
  @override
  final String wireValue;

  static WeeksOfMonth fromValue(String value) {
    for (final item in WeeksOfMonth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeksOfMonth value: $value');
  }
}
