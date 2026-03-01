/// Describes operator to be matched
enum ClientPortOperator {
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

  const ClientPortOperator(this.value);
  final String value;

  static ClientPortOperator fromValue(String value) {
    for (final item in ClientPortOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientPortOperator value: $value');
  }
}

