/// Gets or sets SQL optimization logic.
enum OptimizationLogic {
  valueMinimizeCost("MinimizeCost"),
  valueModernizeToPaaS("ModernizeToPaaS"),
  valueModernizeToAzureSqlMi("ModernizeToAzureSqlMi"),
  valueModernizeToAzureSqlDb("ModernizeToAzureSqlDb");

  const OptimizationLogic(this.wireValue);
  final String wireValue;

  static OptimizationLogic fromValue(String value) {
    for (final item in OptimizationLogic.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptimizationLogic value: $value');
  }
}
