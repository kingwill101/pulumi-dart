/// Describes operator to be matched
enum RequestHeaderOperator {
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

  const RequestHeaderOperator(this.wireValue);
  final String wireValue;

  static RequestHeaderOperator fromValue(String value) {
    for (final item in RequestHeaderOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestHeaderOperator value: $value');
  }
}

