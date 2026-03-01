/// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
enum SmbAccessBasedEnumeration {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SmbAccessBasedEnumeration(this.value);
  final String value;

  static SmbAccessBasedEnumeration fromValue(String value) {
    for (final item in SmbAccessBasedEnumeration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbAccessBasedEnumeration value: $value');
  }
}

