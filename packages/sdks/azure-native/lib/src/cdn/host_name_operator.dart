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

  const HostNameOperator(this.value);
  final String value;

  static HostNameOperator fromValue(String value) {
    for (final item in HostNameOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostNameOperator value: $value');
  }
}

