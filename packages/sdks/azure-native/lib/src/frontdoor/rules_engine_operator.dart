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

  const RulesEngineOperator(this.wireValue);
  final String wireValue;

  static RulesEngineOperator fromValue(String value) {
    for (final item in RulesEngineOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RulesEngineOperator value: $value');
  }
}

