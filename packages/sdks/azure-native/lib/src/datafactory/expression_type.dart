import 'package:pulumi/pulumi.dart' as pulumi;

/// Expression type.
enum ExpressionType implements pulumi.PulumiEnum<String> {
  expression("Expression");

  const ExpressionType(this.wireValue);
  @override
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
