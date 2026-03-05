/// Weeks of month.
enum WeeksOfMonth {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last");

  const WeeksOfMonth(this.wireValue);
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

