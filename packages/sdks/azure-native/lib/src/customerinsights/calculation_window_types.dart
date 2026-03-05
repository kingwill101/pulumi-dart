/// The calculation window.
enum CalculationWindowTypes {
  valueLifetime("Lifetime"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month");

  const CalculationWindowTypes(this.wireValue);
  final String wireValue;

  static CalculationWindowTypes fromValue(String value) {
    for (final item in CalculationWindowTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CalculationWindowTypes value: $value');
  }
}

