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

  const QueryStringOperator(this.value);
  final String value;

  static QueryStringOperator fromValue(String value) {
    for (final item in QueryStringOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueryStringOperator value: $value');
  }
}

