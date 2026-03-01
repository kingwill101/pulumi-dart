/// KPI type (Forecast, Budget).
enum KpiTypeType {
  valueForecast("Forecast"),
  valueBudget("Budget");

  const KpiTypeType(this.value);
  final String value;

  static KpiTypeType fromValue(String value) {
    for (final item in KpiTypeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KpiTypeType value: $value');
  }
}

