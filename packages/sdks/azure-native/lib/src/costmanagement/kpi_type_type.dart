import 'package:pulumi/pulumi.dart' as pulumi;

/// KPI type (Forecast, Budget).
enum KpiTypeType implements pulumi.PulumiEnum<String> {
  valueForecast("Forecast"),
  valueBudget("Budget");

  const KpiTypeType(this.wireValue);
  @override
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
