import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum RequestHeaderOperator implements pulumi.PulumiEnum<String> {
  any("Any"),
  equal("Equal"),
  contains("Contains"),
  beginsWith("BeginsWith"),
  endsWith("EndsWith"),
  lessThan("LessThan"),
  lessThanOrEqual("LessThanOrEqual"),
  greaterThan("GreaterThan"),
  greaterThanOrEqual("GreaterThanOrEqual"),
  regEx("RegEx");

  const RequestHeaderOperator(this.wireValue);
  @override
  final String wireValue;

  static RequestHeaderOperator fromValue(String value) {
    for (final item in RequestHeaderOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestHeaderOperator value: $value');
  }
}
