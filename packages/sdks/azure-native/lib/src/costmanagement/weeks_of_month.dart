/// Weeks of month.
enum WeeksOfMonth {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last");

  const WeeksOfMonth(this.value);
  final String value;

  static WeeksOfMonth fromValue(String value) {
    for (final item in WeeksOfMonth.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeksOfMonth value: $value');
  }
}

