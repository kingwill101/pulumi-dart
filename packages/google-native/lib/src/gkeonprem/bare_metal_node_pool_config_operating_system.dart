/// Specifies the nodes operating system (default: LINUX).
enum BareMetalNodePoolConfigOperatingSystem {
  operatingSystemUnspecified("OPERATING_SYSTEM_UNSPECIFIED"),
  linux("LINUX");

  const BareMetalNodePoolConfigOperatingSystem(this.value);
  final String value;

  static BareMetalNodePoolConfigOperatingSystem fromValue(String value) {
    for (final item in BareMetalNodePoolConfigOperatingSystem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalNodePoolConfigOperatingSystem value: $value');
  }
}

