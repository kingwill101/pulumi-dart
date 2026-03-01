/// Gets or sets SQL optimization logic.
enum OptimizationLogic {
  valueMinimizeCost("MinimizeCost"),
  valueModernizeToPaaS("ModernizeToPaaS"),
  valueModernizeToAzureSqlMi("ModernizeToAzureSqlMi"),
  valueModernizeToAzureSqlDb("ModernizeToAzureSqlDb");

  const OptimizationLogic(this.value);
  final String value;

  static OptimizationLogic fromValue(String value) {
    for (final item in OptimizationLogic.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptimizationLogic value: $value');
  }
}

