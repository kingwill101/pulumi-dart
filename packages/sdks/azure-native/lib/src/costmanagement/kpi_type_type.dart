/// KPI type (Forecast, Budget).
enum KpiTypeType {
  valueForecast("Forecast"),
  valueBudget("Budget");

  const KpiTypeType(this.wireValue);
  final String wireValue;

  static KpiTypeType fromValue(String value) {
    for (final item in KpiTypeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KpiTypeType value: $value');
  }
}
