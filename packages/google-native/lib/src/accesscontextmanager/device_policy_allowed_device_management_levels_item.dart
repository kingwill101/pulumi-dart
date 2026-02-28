enum DevicePolicyAllowedDeviceManagementLevelsItem {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  none("NONE"),
  basic("BASIC"),
  complete("COMPLETE");

  const DevicePolicyAllowedDeviceManagementLevelsItem(this.value);
  final String value;

  static DevicePolicyAllowedDeviceManagementLevelsItem fromValue(String value) {
    for (final item in DevicePolicyAllowedDeviceManagementLevelsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DevicePolicyAllowedDeviceManagementLevelsItem value: $value');
  }
}
