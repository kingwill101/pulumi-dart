enum WeekOfMonth {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last"),
  valueInvalid("Invalid");

  const WeekOfMonth(this.value);
  final String value;

  static WeekOfMonth fromValue(String value) {
    for (final item in WeekOfMonth.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekOfMonth value: $value');
  }
}

