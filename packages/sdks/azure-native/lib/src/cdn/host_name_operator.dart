/// Describes operator to be matched
enum HostNameOperator {
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

  const HostNameOperator(this.wireValue);
  final String wireValue;

  static HostNameOperator fromValue(String value) {
    for (final item in HostNameOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostNameOperator value: $value');
  }
}

