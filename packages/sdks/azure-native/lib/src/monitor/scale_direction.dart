import 'package:pulumi/pulumi.dart' as pulumi;

/// the scale direction. Whether the scaling action increases or decreases the number of instances.
enum ScaleDirection implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueIncrease("Increase"),
  valueDecrease("Decrease");

  const ScaleDirection(this.wireValue);
  @override
  final String wireValue;

  static ScaleDirection fromValue(String value) {
    for (final item in ScaleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleDirection value: $value');
  }
}
