/// Describes operator to be matched
enum RequestBodyOperator {
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

  const RequestBodyOperator(this.wireValue);
  final String wireValue;

  static RequestBodyOperator fromValue(String value) {
    for (final item in RequestBodyOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestBodyOperator value: $value');
  }
}

