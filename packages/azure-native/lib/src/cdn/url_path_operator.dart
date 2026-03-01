/// Describes operator to be matched
enum UrlPathOperator {
  any("Any"),
  equal("Equal"),
  contains("Contains"),
  beginsWith("BeginsWith"),
  endsWith("EndsWith"),
  lessThan("LessThan"),
  lessThanOrEqual("LessThanOrEqual"),
  greaterThan("GreaterThan"),
  greaterThanOrEqual("GreaterThanOrEqual"),
  wildcard("Wildcard"),
  regEx("RegEx");

  const UrlPathOperator(this.value);
  final String value;

  static UrlPathOperator fromValue(String value) {
    for (final item in UrlPathOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlPathOperator value: $value');
  }
}

