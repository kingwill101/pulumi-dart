/// The capabilities and features enabled for the IoT hub.
enum Capabilities {
  valueNone("None"),
  valueDeviceManagement("DeviceManagement");

  const Capabilities(this.value);
  final String value;

  static Capabilities fromValue(String value) {
    for (final item in Capabilities.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Capabilities value: $value');
  }
}

