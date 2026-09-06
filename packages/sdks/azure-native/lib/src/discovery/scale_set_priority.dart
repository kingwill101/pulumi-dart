import 'package:pulumi/pulumi.dart' as pulumi;

/// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
enum ScaleSetPriority implements pulumi.PulumiEnum<String> {
  regular("Regular"),
  spot("Spot");

  const ScaleSetPriority(this.wireValue);
  @override
  final String wireValue;

  static ScaleSetPriority fromValue(String value) {
    for (final item in ScaleSetPriority.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleSetPriority value: $value');
  }
}
