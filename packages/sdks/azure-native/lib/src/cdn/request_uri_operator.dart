import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum RequestUriOperator implements pulumi.PulumiEnum<String> {
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

  const RequestUriOperator(this.wireValue);
  @override
  final String wireValue;

  static RequestUriOperator fromValue(String value) {
    for (final item in RequestUriOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestUriOperator value: $value');
  }
}
