/// Describes operator to be matched
enum UrlFileExtensionOperator {
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
