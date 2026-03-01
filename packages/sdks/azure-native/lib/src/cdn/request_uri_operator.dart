/// Describes operator to be matched
enum RequestUriOperator {
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

  const RequestUriOperator(this.value);
  final String value;

  static RequestUriOperator fromValue(String value) {
    for (final item in RequestUriOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestUriOperator value: $value');
  }
}

