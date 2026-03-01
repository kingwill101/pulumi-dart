/// The source that the routing rule is to be applied to, such as DeviceMessages.
enum RoutingSource {
  valueInvalid("Invalid"),
  valueDeviceMessages("DeviceMessages"),
  valueTwinChangeEvents("TwinChangeEvents"),
  valueDeviceLifecycleEvents("DeviceLifecycleEvents"),
  valueDeviceJobLifecycleEvents("DeviceJobLifecycleEvents"),
  valueDeviceConnectionStateEvents("DeviceConnectionStateEvents");

  const RoutingSource(this.value);
  final String value;

  static RoutingSource fromValue(String value) {
    for (final item in RoutingSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingSource value: $value');
  }
}

