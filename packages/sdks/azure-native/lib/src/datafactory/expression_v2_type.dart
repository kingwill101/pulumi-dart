/// Type of expressions supported by the system. Type: string.
enum ExpressionV2Type {
  valueConstant("Constant"),
  valueField("Field"),
  valueUnary("Unary"),
  valueBinary("Binary"),
  valueNAry("NAry");

  const ExpressionV2Type(this.value);
  final String value;

  static ExpressionV2Type fromValue(String value) {
    for (final item in ExpressionV2Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressionV2Type value: $value');
  }
}

