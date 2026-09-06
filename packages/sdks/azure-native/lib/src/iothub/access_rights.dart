import 'package:pulumi/pulumi.dart' as pulumi;

/// The permissions assigned to the shared access policy.
enum AccessRights implements pulumi.PulumiEnum<String> {
  valueRegistryRead("RegistryRead"),
  valueRegistryWrite("RegistryWrite"),
  valueServiceConnect("ServiceConnect"),
  valueDeviceConnect("DeviceConnect"),
  valueRegistryReadRegistryWrite("RegistryRead, RegistryWrite"),
  valueRegistryReadServiceConnect("RegistryRead, ServiceConnect"),
  valueRegistryReadDeviceConnect("RegistryRead, DeviceConnect"),
  valueRegistryWriteServiceConnect("RegistryWrite, ServiceConnect"),
  valueRegistryWriteDeviceConnect("RegistryWrite, DeviceConnect"),
  valueServiceConnectDeviceConnect("ServiceConnect, DeviceConnect"),
  valueRegistryReadRegistryWriteServiceConnect("RegistryRead, RegistryWrite, ServiceConnect"),
  valueRegistryReadRegistryWriteDeviceConnect("RegistryRead, RegistryWrite, DeviceConnect"),
  valueRegistryReadServiceConnectDeviceConnect("RegistryRead, ServiceConnect, DeviceConnect"),
  valueRegistryWriteServiceConnectDeviceConnect("RegistryWrite, ServiceConnect, DeviceConnect"),
  valueRegistryReadRegistryWriteServiceConnectDeviceConnect("RegistryRead, RegistryWrite, ServiceConnect, DeviceConnect");

  const AccessRights(this.wireValue);
  @override
  final String wireValue;

  static AccessRights fromValue(String value) {
    for (final item in AccessRights.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRights value: $value');
  }
}
