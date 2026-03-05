/// Describes operator to be matched
enum PostArgsOperator {
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

  const PostArgsOperator(this.wireValue);
  final String wireValue;

  static PostArgsOperator fromValue(String value) {
    for (final item in PostArgsOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostArgsOperator value: $value');
  }
}

