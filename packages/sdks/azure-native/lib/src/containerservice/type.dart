import 'package:pulumi/pulumi.dart' as pulumi;

/// The week index. Specifies on which week of the month the dayOfWeek applies.
enum Type implements pulumi.PulumiEnum<String> {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last");

  const Type(this.wireValue);
  @override
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
