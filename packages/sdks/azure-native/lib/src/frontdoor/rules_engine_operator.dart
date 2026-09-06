import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to apply to the match condition.
enum RulesEngineOperator implements pulumi.PulumiEnum<String> {
  any("Any"),
  iPMatch("IPMatch"),
  geoMatch("GeoMatch"),
  equal("Equal"),
  contains("Contains"),
  lessThan("LessThan"),
  greaterThan("GreaterThan"),
  lessThanOrEqual("LessThanOrEqual"),
  greaterThanOrEqual("GreaterThanOrEqual"),
  beginsWith("BeginsWith"),
  endsWith("EndsWith");

  const RulesEngineOperator(this.wireValue);
  @override
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
