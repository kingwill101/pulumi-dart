import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum RequestBodyOperator implements pulumi.PulumiEnum<String> {
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

  const RequestBodyOperator(this.wireValue);
  @override
  final String wireValue;

  static RequestBodyOperator fromValue(String value) {
    for (final item in RequestBodyOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestBodyOperator value: $value');
  }
}
