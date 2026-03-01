/// The week index. Specifies on which week of the month the dayOfWeek applies.
enum Type {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

