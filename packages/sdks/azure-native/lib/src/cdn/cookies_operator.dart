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

  const CookiesOperator(this.wireValue);
  final String wireValue;

  static CookiesOperator fromValue(String value) {
    for (final item in CookiesOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CookiesOperator value: $value');
  }
}

