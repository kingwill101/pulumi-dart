/// The DDoS protection mode of the public IP
enum DdosSettingsProtectionMode {
  valueVirtualNetworkInherited("VirtualNetworkInherited"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DdosSettingsProtectionMode(this.value);
  final String value;

  static DdosSettingsProtectionMode fromValue(String value) {
    for (final item in DdosSettingsProtectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DdosSettingsProtectionMode value: $value');
  }
}

