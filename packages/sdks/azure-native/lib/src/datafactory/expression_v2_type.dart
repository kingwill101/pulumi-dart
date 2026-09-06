import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of expressions supported by the system. Type: string.
enum ExpressionV2Type implements pulumi.PulumiEnum<String> {
  constant("Constant"),
  field("Field"),
  unary("Unary"),
  binary("Binary"),
  nAry("NAry");

  const ExpressionV2Type(this.wireValue);
  @override
  final String wireValue;

  static ExpressionV2Type fromValue(String value) {
    for (final item in ExpressionV2Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressionV2Type value: $value');
  }
}
