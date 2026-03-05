/// Describes operator to be matched
enum ServerPortOperator {
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

  const ServerPortOperator(this.wireValue);
  final String wireValue;

  static ServerPortOperator fromValue(String value) {
    for (final item in ServerPortOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerPortOperator value: $value');
  }
}

