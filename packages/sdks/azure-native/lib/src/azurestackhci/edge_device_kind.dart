import 'package:pulumi/pulumi.dart' as pulumi;

/// Edge Solution type to support polymorphic resource.
enum EdgeDeviceKind implements pulumi.PulumiEnum<String> {
  hCI("HCI");

  const EdgeDeviceKind(this.wireValue);
  @override
  final String wireValue;

  static EdgeDeviceKind fromValue(String value) {
    for (final item in EdgeDeviceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeDeviceKind value: $value');
  }
}
