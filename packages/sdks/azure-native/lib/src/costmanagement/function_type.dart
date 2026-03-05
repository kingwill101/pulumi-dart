/// The name of the aggregation function to use.
enum FunctionType {
  valueSum("Sum");

  const FunctionType(this.wireValue);
  final String wireValue;

  static FunctionType fromValue(String value) {
    for (final item in FunctionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionType value: $value');
  }
}

