import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum HostNameOperator implements pulumi.PulumiEnum<String> {
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

  const HostNameOperator(this.wireValue);
  @override
  final String wireValue;

  static HostNameOperator fromValue(String value) {
    for (final item in HostNameOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostNameOperator value: $value');
  }
}
