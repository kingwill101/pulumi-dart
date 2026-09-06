import 'package:pulumi/pulumi.dart' as pulumi;

/// The source that the routing rule is to be applied to, such as DeviceMessages.
enum RoutingSource implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueDeviceMessages("DeviceMessages"),
  valueTwinChangeEvents("TwinChangeEvents"),
  valueDeviceLifecycleEvents("DeviceLifecycleEvents"),
  valueDeviceJobLifecycleEvents("DeviceJobLifecycleEvents"),
  valueDeviceConnectionStateEvents("DeviceConnectionStateEvents");

  const RoutingSource(this.wireValue);
  @override
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
