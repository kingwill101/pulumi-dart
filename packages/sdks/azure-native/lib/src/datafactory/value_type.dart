import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of value copied from source.
enum ValueType implements pulumi.PulumiEnum<String> {
  actual("actual"),
  display("display");

  const ValueType(this.wireValue);
  @override
  final String wireValue;

  static ValueType fromValue(String value) {
    for (final item in ValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValueType value: $value');
  }
}
