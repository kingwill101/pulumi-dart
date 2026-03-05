enum WeekNumber {
  valueFirst("First"),
  valueFourth("Fourth"),
  valueLast("Last"),
  valueSecond("Second"),
  valueThird("Third");

  const WeekNumber(this.wireValue);
  final String wireValue;

  static WeekNumber fromValue(String value) {
    for (final item in WeekNumber.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekNumber value: $value');
  }
}

