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

  const UrlFileExtensionOperator(this.value);
  final String value;

  static UrlFileExtensionOperator fromValue(String value) {
    for (final item in UrlFileExtensionOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlFileExtensionOperator value: $value');
  }
}

