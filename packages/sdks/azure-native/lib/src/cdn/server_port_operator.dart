import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum ServerPortOperator implements pulumi.PulumiEnum<String> {
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

  const ServerPortOperator(this.wireValue);
  @override
  final String wireValue;

  static ServerPortOperator fromValue(String value) {
    for (final item in ServerPortOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerPortOperator value: $value');
  }
}
