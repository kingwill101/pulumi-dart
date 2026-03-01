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

  const UrlFileNameOperator(this.value);
  final String value;

  static UrlFileNameOperator fromValue(String value) {
    for (final item in UrlFileNameOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlFileNameOperator value: $value');
  }
}

