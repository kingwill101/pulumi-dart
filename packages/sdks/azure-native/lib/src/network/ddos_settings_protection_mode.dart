/// The DDoS protection mode of the public IP
enum DdosSettingsProtectionMode {
  valueVirtualNetworkInherited("VirtualNetworkInherited"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DdosSettingsProtectionMode(this.wireValue);
  final String wireValue;

  static DdosSettingsProtectionMode fromValue(String value) {
    for (final item in DdosSettingsProtectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DdosSettingsProtectionMode value: $value');
  }
}

