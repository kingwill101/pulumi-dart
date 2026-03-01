enum Month {
  valueApril("April"),
  valueAugust("August"),
  valueDecember("December"),
  valueFebruary("February"),
  valueJanuary("January"),
  valueJuly("July"),
  valueJune("June"),
  valueMarch("March"),
  valueMay("May"),
  valueNovember("November"),
  valueOctober("October"),
  valueSeptember("September");

  const Month(this.value);
  final String value;

  static Month fromValue(String value) {
    for (final item in Month.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Month value: $value');
  }
}

