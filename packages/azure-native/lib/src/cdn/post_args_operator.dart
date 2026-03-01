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

  const PostArgsOperator(this.value);
  final String value;

  static PostArgsOperator fromValue(String value) {
    for (final item in PostArgsOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostArgsOperator value: $value');
  }
}

