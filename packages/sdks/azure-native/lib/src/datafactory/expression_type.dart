/// Expression type.
enum ExpressionType {
  expression("Expression");

  const ExpressionType(this.wireValue);
  final String wireValue;

  static ExpressionType fromValue(String value) {
    for (final item in ExpressionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressionType value: $value');
  }
}
