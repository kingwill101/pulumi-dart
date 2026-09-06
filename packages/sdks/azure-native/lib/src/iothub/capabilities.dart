import 'package:pulumi/pulumi.dart' as pulumi;

/// The capabilities and features enabled for the IoT hub.
enum Capabilities implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueDeviceManagement("DeviceManagement");

  const Capabilities(this.wireValue);
  @override
  final String wireValue;

  static Capabilities fromValue(String value) {
    for (final item in Capabilities.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Capabilities value: $value');
  }
}
