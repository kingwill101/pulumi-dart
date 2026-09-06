import 'package:pulumi/pulumi.dart' as pulumi;

/// Device kind to support polymorphic resource.
enum DeviceKind implements pulumi.PulumiEnum<String> {
  hCI("HCI");

  const DeviceKind(this.wireValue);
  @override
  final String wireValue;

  static DeviceKind fromValue(String value) {
    for (final item in DeviceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceKind value: $value');
  }
}
