/// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
enum SmbAccessBasedEnumeration {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SmbAccessBasedEnumeration(this.wireValue);
  final String wireValue;

  static SmbAccessBasedEnumeration fromValue(String value) {
    for (final item in SmbAccessBasedEnumeration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbAccessBasedEnumeration value: $value');
  }
}

