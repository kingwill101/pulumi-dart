/// Describes operator to be matched
enum QueryStringOperator {
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

  const QueryStringOperator(this.wireValue);
  final String wireValue;

  static QueryStringOperator fromValue(String value) {
    for (final item in QueryStringOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueryStringOperator value: $value');
  }
}
