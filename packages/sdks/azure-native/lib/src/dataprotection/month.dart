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

  const Month(this.wireValue);
  final String wireValue;

  static Month fromValue(String value) {
    for (final item in Month.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Month value: $value');
  }
}

