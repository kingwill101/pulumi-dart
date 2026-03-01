enum WeekNumber {
  valueFirst("First"),
  valueFourth("Fourth"),
  valueLast("Last"),
  valueSecond("Second"),
  valueThird("Third");

  const WeekNumber(this.value);
  final String value;

  static WeekNumber fromValue(String value) {
    for (final item in WeekNumber.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekNumber value: $value');
  }
}

