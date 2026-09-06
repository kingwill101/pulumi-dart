import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum Operator implements pulumi.PulumiEnum<String> {
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
  endsWith("EndsWith"),
  regEx("RegEx");

  const Operator(this.wireValue);
  @override
  final String wireValue;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}
