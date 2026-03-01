/// The name of the aggregation function to use.
enum FunctionType {
  valueSum("Sum");

  const FunctionType(this.value);
  final String value;

  static FunctionType fromValue(String value) {
    for (final item in FunctionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionType value: $value');
  }
}

