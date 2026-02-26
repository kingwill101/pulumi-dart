enum DevicePolicyAllowedDeviceManagementLevelsItem2 {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  none("NONE"),
  basic("BASIC"),
  complete("COMPLETE");

  const DevicePolicyAllowedDeviceManagementLevelsItem2(this.value);
  final String value;

  static DevicePolicyAllowedDeviceManagementLevelsItem2 fromValue(
      String value) {
    for (final item in DevicePolicyAllowedDeviceManagementLevelsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DevicePolicyAllowedDeviceManagementLevelsItem2 value: $value');
  }
}
