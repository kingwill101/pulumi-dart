import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum UrlFileExtensionOperator implements pulumi.PulumiEnum<String> {
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

  const UrlFileExtensionOperator(this.wireValue);
  @override
  final String wireValue;

  static UrlFileExtensionOperator fromValue(String value) {
    for (final item in UrlFileExtensionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlFileExtensionOperator value: $value');
  }
}
