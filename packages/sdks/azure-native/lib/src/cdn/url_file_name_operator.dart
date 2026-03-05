/// Describes operator to be matched
enum UrlFileNameOperator {
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

  const UrlFileNameOperator(this.wireValue);
  final String wireValue;

  static UrlFileNameOperator fromValue(String value) {
    for (final item in UrlFileNameOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlFileNameOperator value: $value');
  }
}

