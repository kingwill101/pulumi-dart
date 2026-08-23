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

  const UrlPathOperator(this.wireValue);
  final String wireValue;

  static UrlPathOperator fromValue(String value) {
    for (final item in UrlPathOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlPathOperator value: $value');
  }
}
