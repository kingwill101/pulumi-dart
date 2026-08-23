/// The permissions assigned to the shared access policy.
enum AccessRights {
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
