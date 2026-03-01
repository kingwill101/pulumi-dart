/// Comparison type to use for matching with the variable value.
enum Operator {
  valueAny("Any"),
  valueIPMatch("IPMatch"),
  valueGeoMatch("GeoMatch"),
  valueEqual("Equal"),
  valueContains("Contains"),
  valueLessThan("LessThan"),
  valueGreaterThan("GreaterThan"),
  valueLessThanOrEqual("LessThanOrEqual"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueBeginsWith("BeginsWith"),
  valueEndsWith("EndsWith"),
  valueRegEx("RegEx");

  const Operator(this.value);
  final String value;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}

