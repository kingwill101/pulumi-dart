/// Describes operator to apply to the match condition.
enum RulesEngineOperator {
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
  valueEndsWith("EndsWith");

  const RulesEngineOperator(this.value);
  final String value;

  static RulesEngineOperator fromValue(String value) {
    for (final item in RulesEngineOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RulesEngineOperator value: $value');
  }
}

