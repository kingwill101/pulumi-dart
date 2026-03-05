/// The source that the routing rule is to be applied to, such as DeviceMessages.
enum RoutingSource {
  valueInvalid("Invalid"),
  valueDeviceMessages("DeviceMessages"),
  valueTwinChangeEvents("TwinChangeEvents"),
  valueDeviceLifecycleEvents("DeviceLifecycleEvents"),
  valueDeviceJobLifecycleEvents("DeviceJobLifecycleEvents"),
  valueDeviceConnectionStateEvents("DeviceConnectionStateEvents");

  const RoutingSource(this.wireValue);
  final String wireValue;

  static RoutingSource fromValue(String value) {
    for (final item in RoutingSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingSource value: $value');
  }
}

