/// Describes operator to be matched
enum CookiesOperator {
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

  const CookiesOperator(this.value);
  final String value;

  static CookiesOperator fromValue(String value) {
    for (final item in CookiesOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CookiesOperator value: $value');
  }
}

